#pragma once
#include "Component.h"
namespace LocoMotor {
	class UIImageLM;
	class UITextLM;
	class MeshRenderer;
}
namespace JuegoDeAutos {
	class RaceManager;

	class SceneChangeButton : public LocoMotor::Component {
	public:
		SceneChangeButton();
		~SceneChangeButton();
		void Start() override;
	private:
		/// @brief Changes the text of the UI 
		void SetPlayerReady(int playerIndex);// 0:PlayerOne, 1: Player Two
		int playerOneCarIndex;int playerTwoCarIndex;
		bool playerOneReady; bool playerTwoReady;
		void ChangeVelocity();
		void ChangeVehicle();
		//True if add One to the right
		void ChangeTrack(bool nextTrack);
		int vehicleIndex;
		LocoMotor::UIImageLM* _startGameButton;
		LocoMotor::UIImageLM* _goToIntroButton;
		LocoMotor::UIImageLM* _vehiclePortraitImg;
		LocoMotor::UIImageLM* _vehicleInfoPanel;
		LocoMotor::UIImageLM* _arrowLeft_Car;
		LocoMotor::UIImageLM* _arrowRight_Car;
		LocoMotor::UIImageLM* _selectPlayerOne;
		LocoMotor::UIImageLM* _selectPlayerTwo;
		LocoMotor::UITextLM* _speedText;
		//Tracks
		int trackIndex;
		LocoMotor::UIImageLM* _trackArrowLeftButton;
		LocoMotor::UIImageLM* _trackArrowRightButton;
		LocoMotor::MeshRenderer* trackMesh00;
		LocoMotor::MeshRenderer* trackMesh01;
	};
}

