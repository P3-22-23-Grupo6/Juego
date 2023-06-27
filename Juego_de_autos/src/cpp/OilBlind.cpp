#include "Scene.h"
#include "GameObject.h"
#include "Transform.h"
#include "RaceManager.h"
#include "AudioSource.h"
#include "RigidBody.h"
#include "OilBlind.h"

using namespace JuegoDeAutos;
using namespace LocoMotor;

const std::string OilBlind::name = "Oil";

OilBlind::OilBlind() {
	_timeSplitted = 4.0f;
	_oriPos = { 200,0,0 };
	_farPos = { 200,25,0 };
	_rm = RaceManager::GetInstance();
	_splitted = false;
}

void OilBlind::Init(std::vector<std::pair<std::string, std::string>>& params) {
	for (int i = 0; i < params.size(); i++) {
		if (params[i].first == "slippedtime") {
			_timeSplitted = std::stof(params[i].second);
		}
		
	}
}

void OilBlind::Update(float dt) {
	if (_rm->RestoreOil()) {
		if (_splitted) {
			_splitted = false;
			this->gameObject->SetPosition(_oriPos);
		}
		_rm->SetRestore(false);
	}
	
}


void OilBlind::OnCollisionEnter(GameObject* other)
{
	
	if (other->GetName() == "coche") {
		_rm->setBlind(_timeSplitted);
		//_rm->OnRaceFinished();
		_oriPos = this->gameObject->GetTransform()->GetPosition();
		this->gameObject->SetPosition(_farPos);
		_splitted = true;
	}
	//this->gameObject->GetScene()->RemoveGameobject(this->gameObject->GetName());
	
	//this->gameObject->GetScene()->Destroy();
}