Coursera Getting and Cleaning Data Week 4 Project Code Book

Data were obtained from Samsung Galaxy II smartphones worn by 30 anonymous volunteers.
Measurements were, per Samsung's explanation:
	"Using its (the phone's) embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz."
This data was processed in time domain and frequency domain (where appropriate). 
Accelerometer signals were split into 'body motion' and 'gravitational" components
Gyroscope signals were all attributed to 'body motion'
The resultant variables used for this analysis are:
 
 [1] "volunteer"                                                            
		  numeric designation of anonmous volunteers 1-30
 [2] "activity"                                                             
		  activity involved in during measurements
 [3] "mean.Body.Acceleration.x.axis.TimeDomain"                             
		  mean body motion component accelerometer
 [4] "mean.Body.Acceleration.y.axis.TimeDomain"                             
		  mean body motion component accelerometer
 [5] "mean.Body.Acceleration.z.axis.TimeDomain"                             
		  mean body motion component accelerometer
 [6] "SD.Body.Acceleration.x.axis.TimeDomain"                               
		  standard deviation body motion component accelerometer
 [7] "SD.Body.Acceleration.y.axis.TimeDomain"                               
		  standard deviation body motion component accelerometer
 [8] "SD.Body.Acceleration.z.axis.TimeDomain"                               
		  standard deviation body motion component accelerometer
 [9] "mean.Gravity.Acceleration.x.axis.TimeDomain"                          
		  mean gravity component accelerometer
[10] "mean.Gravity.Acceleration.y.axis.TimeDomain"                          
		  mean gravity component accelerometer
[11] "mean.Gravity.Acceleration.z.axis.TimeDomain"                          
		  mean gravity component accelerometer
[12] "SD.Gravity.Acceleration.x.axis.TimeDomain"                            
		  standard deviation gravity component accelerometer
[13] "SD.Gravity.Acceleration.y.axis.TimeDomain"                            
		  standard deviation gravity component accelerometer
[14] "SD.Gravity.Acceleration.z.axis.TimeDomain"                            
		  standard deviation gravity component accelerometer
[15] "mean.Body.Acceleration.Jerk.x.axis.TimeDomain"                        
		  mean body component accelerometer jerk (linear acceleration and angular velocity)
[16] "mean.Body.Acceleration.Jerk.y.axis.TimeDomain"                        
		  mean body component accelerometer jerk (linear acceleration and angular velocity)
[17] "mean.Body.Acceleration.Jerk.z.axis.TimeDomain"                        
		  mean body component accelerometer jerk (linear acceleration and angular velocity)
[18] "SD.Body.Acceleration.Jerk.x.axis.TimeDomain"                          
			standard deviation body component accelerometer jerk (linear acceleration and angular velocity)
[19] "SD.Body.Acceleration.Jerk.y.axis.TimeDomain"                          
		  standard deviation body component accelerometer jerk (linear acceleration and angular velocity)
[20] "SD.Body.Acceleration.Jerk.z.axis.TimeDomain"                          
			standard deviation body component accelerometer jerk (linear acceleration and angular velocity)
[21] "mean.Body.Gyro.x.axis.TimeDomain"                                     
			mean body component gyroscope			
[22] "mean.Body.Gyro.y.axis.TimeDomain"                                     
		  mean body component gyroscope					
[23] "mean.Body.Gyro.z.axis.TimeDomain"                                     
		  mean body component gyroscope					
[24] "SD.Body.Gyro.x.axis.TimeDomain"                                       
			standard deviation body component gyroscope					
[25] "SD.Body.Gyro.y.axis.TimeDomain"                                       
			standard deviation body component gyroscope								
[26] "SD.Body.Gyro.z.axis.TimeDomain"                                       
			standard deviation body component gyroscope								
[27] "mean.Body.Gyro.Jerk.x.axis.TimeDomain"                                
			mean body component gyroscope jerk	
[28] "mean.Body.Gyro.Jerk.y.axis.TimeDomain"                                
			mean body component gyroscope jerk	
[29] "mean.Body.Gyro.Jerk.z.axis.TimeDomain"                                
			mean body component gyroscope jerk				
[30] "SD.Body.Gyro.Jerk.x.axis.TimeDomain"                                  
			standard deviation body component gyroscope jerk							
[31] "SD.Body.Gyro.Jerk.y.axis.TimeDomain"                                  
			standard deviation body component gyroscope jerk										
[32] "SD.Body.Gyro.Jerk.z.axis.TimeDomain"                                  
			standard deviation body component gyroscope jerk										
[33] "mean.SignalMagnitude.Body.Acceleration.TimeDomain"                    
			mean signal magnitude body component accelerometer
[34] "SD.SignalMagnitude.Body.Acceleration.TimeDomain"                      
			standard deviation signal magnitude body component accelerometer			
[35] "mean.SignalMagnitude.Gravity.Acceleration.TimeDomain"                 
			mean signal magnitude gravity component accelerometer			
[36] "SD.SignalMagnitude.Gravity.Acceleration.TimeDomain"                   
			standard deviation signal magnitude gravity component accelerometer						
[37] "mean.SignalMagnitude.Body.Acceleration.Jerk.TimeDomain"               
			mean signal magnitude body component accelerometer jerk
[38] "SD.SignalMagnitude.Body.Acceleration.Jerk.TimeDomain"                 
			standard deviation signal magnitude body component accelerometer jerk			
[39] "mean.SignalMagnitude.Body.Gyro.TimeDomain"                            
			mean signal magnitude body component gyroscope
[40] "SD.SignalMagnitude.Body.Gyro.TimeDomain"                              
			standard deviation signal magnitude body component gyroscope			
[41] "mean.SignalMagnitude.Body.Gyro.Jerk.TimeDomain"                       
			mean signal magnitude body component gyroscope jerk			
[42] "SD.SignalMagnitude.Body.Gyro.Jerk.TimeDomain"                         
			standard deviation signal magnitude body component gyroscope jerk						
[43] "mean.Body.Acceleration.x.axis.FrequencyDomain"                        
			mean body motion component accelerometer			
[44] "mean.Body.Acceleration.y.axis.FrequencyDomain"                        
			mean body motion component accelerometer						
[45] "mean.Body.Acceleration.z.axis.FrequencyDomain"                        
			mean body motion component accelerometer						
[46] "SD.Body.Acceleration.x.axis.FrequencyDomain"                          
			standard deviation body motion component accelerometer						
[47] "SD.Body.Acceleration.y.axis.FrequencyDomain"                          
			standard deviation body motion component accelerometer									
[48] "SD.Body.Acceleration.z.axis.FrequencyDomain"                          
			standard deviation body motion component accelerometer									
[49] "mean.Frequency.Body.Acceleration.x.axis.FrequencyDomain"              
			mean frequency body motion component accelerometer	
[50] "mean.Frequency.Body.Acceleration.y.axis.FrequencyDomain"              
			mean frequency body motion component accelerometer				
[51] "mean.Frequency.Body.Acceleration.z.axis.FrequencyDomain"              
			mean frequency body motion component accelerometer				
[52] "mean.Body.Acceleration.Jerk.x.axis.FrequencyDomain"                   
			mean body motion component accelerometer jerk
[53] "mean.Body.Acceleration.Jerk.y.axis.FrequencyDomain"                   
			mean body motion component accelerometer jerk			
[54] "mean.Body.Acceleration.Jerk.z.axis.FrequencyDomain"                   
			mean body motion component accelerometer jerk			
[55] "SD.Body.Acceleration.Jerk.x.axis.FrequencyDomain"                     
			standard deviiation body motion component accelerometer jerk			
[56] "SD.Body.Acceleration.Jerk.y.axis.FrequencyDomain"                     
			standard deviiation body motion component accelerometer jerk						
[57] "SD.Body.Acceleration.Jerk.z.axis.FrequencyDomain"                     
			standard deviiation body motion component accelerometer jerk						
[58] "mean.Frenquency.Body.Acceleration.Jerk.x.axis.FrequencyDomain"        
			mean frequency body motion component accelerometer jerk
[59] "mean.Frequency.Body.Acceleration.Jerk.y.axis.FrequencyDomain"         
			mean frequency body motion component accelerometer jerk			
[60] "mean.Frequency.Body.Acceleration.Jerk.z.axis.FrequencyDomain"         
			mean frequency body motion component accelerometer jerk			
[61] "mean.Body.Gyro.x.axis.FrequencyDomain"                                                
			mean body motion component gyroscope
[62] "mean.Body.Gyro.y.axis.FrequencyDomain"                                
			mean body motion component gyroscope
[63] "mean.Body.Gyro.z.axis.FrequencyDomain"                                                
			mean body motion component gyroscope
[64] "SD.Body.Gyro.x.axis.FrequencyDomain"                                  
			standard deviation body motion component gyroscope
[65] "SD.Body.Gyro.y.axis.FrequencyDomain"                                                  
			standard deviation body motion component gyroscope
[66] "SD.Body.Gyro.z.axis.FrequencyDomain"                                  
			standard deviation body motion component gyroscope
[67] "mean.Frequency.Body.Gyro.x.axis.FrequencyDomain"                      
			mean frequency body motion component gyroscope
[68] "mean.Frequency.Body.Gyro.y.axis.FrequencyDomain"                      
			mean frequency body motion component gyroscope
[69] "mean.Frequency.Body.Gyro.z.axis.FrequencyDomain"                      
			mean frequency body motion component gyroscope
[70] "mean.SignalMagnitude.Body.Acceleration.FrequencyDomain"               
			mean signal magnitude body motion component accelerometer
[71] "SD.SignalMagnitude.Body.Acceleration.FrequencyDomain"                 
			standard deviation signal magnitude body motion component accelerometer			
[72] "mean.Frequency.SignalMagnitude.Body.Acceleration.FrequencyDomain"     
			mean frequency signal magnitude body motion component accelerometer			
[73] "mean.SignalMagnitude.Body.Acceleration.Jerk.FrequencyDomain"          
			mean signal magnitude body motion component accelerometer jerk
[74] "SD.SignalMagnitude.Body.Acceleration.Jerk.FrequencyDomain"            
			standard deviation signal magnitude body motion component accelerometer jerk			
[75] "mean.Frequency.SignalMagnitude.Body.Acceleration.Jerk.FrequencyDomain"
			mean frequency signal magnitude body motion component accelerometer jerk
[76] "mean.SignalMagnitude.Body.Gyro.FrequencyDomain"                       
			mean signal magnitude body motion component gyroscope			
[77] "SD.SignalMagnitude.Body.Gyro.FrequencyDomain"                         
			standard deviation signal magnitude body motion component gyroscope			
[78] "mean.Frequency.SignalMagnitude.Body.Gyro.FrequencyDomain"             
			mean frequency signal magnitude body motion component gyroscope						
[79] "mean.SignalMagnitude.Body.Gyro.Jerk.FrequencyDomain"                  
			mean signal magnitude body motion component gyroscope jerk
[80] "SD.SignalMagnitude.Body.Gyro.Jerk.FrequencyDomain"                    
			standard deviation signal magnitude body motion component gyroscope jerk			
[81] "mean.Frenquency.SignalMagnitude.Body.Gyro.Jerk.FrequencyDomain"
			mean frequency signal magnitude body motion component gyroscope jerk
