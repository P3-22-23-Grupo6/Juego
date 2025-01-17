#pragma once
#include "Component.h"

namespace LocoMotor {
	class GameObject;
	class Transform;
}
namespace JuegoDeAutos {
	class CameraPanner : public  LocoMotor::Component {
	public:
		const static std::string name;
		static std::string GetName() {
			return "CameraPanner";
		};
		CameraPanner();
		void Init(std::vector<std::pair<std::string, std::string>>& params) override;
		/// @brief Does things when collides with an object
		/// @param other the object collided with the entity  
		void Start() override;
		void Update(float dt) override;
		double CustomLerp(double a, double b, double t);
	private:
		float panSpeed;
		float maxDistance;
		bool backward;
		float counter;
		LocoMotor::Transform* tr;
		int side;
		float bufferTime;
	};
}