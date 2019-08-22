import rospy
import rospy
from clever import srv
from std_srvs.srv import Trigger

rospy.init_node('flight')

get_telemetry = rospy.ServiceProxy('get_telemetry', srv.GetTelemetry)
navigate = rospy.ServiceProxy('navigate', srv.Navigate)
navigate_global = rospy.ServiceProxy('navigate_global', srv.NavigateGlobal)
set_position = rospy.ServiceProxy('set_position', srv.SetPosition)
set_velocity = rospy.ServiceProxy('set_velocity', srv.SetVelocity)
set_attitude = rospy.ServiceProxy('set_attitude', srv.SetAttitude)
set_rates = rospy.ServiceProxy('set_rates', srv.SetRates)
land = rospy.ServiceProxy('land', Trigger)

navigate(x=0, y=0, z=1.5, speed=0.5, frame_id='body', auto_arm=True)
rospy.sleep (3) 

navigate(x=5, y=0, z=2, speed=1, frame_id='aruco_map')
rospy.sleep (6) 
navigate(x=5, y=8, z=2, speed=2, frame_id='aruco_map')
rospy.sleep (5)
navigate(x=8, y=8, z=2, speed=1.5, frame_id='aruco_map')
rospy.sleep (4) 
navigate(x=2, y=0, z=2, speed=2, frame_id='aruco_map') 
rospy.sleep (6)
navigate(x=5, y=0, z=2, speed=2, frame_id='aruco_map') 
rospy.sleep (10) 
land()
