cp ../undefined-1/ros.md setup.md
cp ../undefined/1.md 1-dofs-robot.md
cp ../undefined/eduexo.md eduexo-robot.md

cp ../undefined/human.md research-human-model.md
cp ../undefined/undefined.md research-sensor-modeling.md
cp ../undefined/control.md research-control.md

cp ../undefined/human-2.md human-model.md
cp ../undefined/human-+-eduexo.md human-eduexo.md

cp ../undefined/urdf.md test-friction.md
cp ../undefined/urdf-1.md test-collision.md

#cat setup.md > wearable_robot.md

#cat research-human-model.md >> wearable_robot.md
#cat research-sensor-modeling.md >> wearable_robot.md
#cat research-control.md >> wearable_robot.md

#cat 1-dofs-robot.md >> wearable_robot.md
#cat eduexo-robot.md >> wearable_robot.md
#cat human-model.md >> wearable_robot.md
#cat human-eduexo.md >> wearable_robot.md

#cat test-friction.md >> wearable_robot.md
#cat test-collision.md >> wearable_robot.md

pandoc --reference-doc=reference-spoqahansans-for-pandoc-2.16.docx -s -s wearable_robot.md -o wearable_robot.docx
