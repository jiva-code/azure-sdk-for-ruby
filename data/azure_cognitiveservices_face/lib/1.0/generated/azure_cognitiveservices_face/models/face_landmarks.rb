# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # A collection of 27-point face landmarks pointing to the important
    # positions of face components.
    #
    class FaceLandmarks

      include MsRestAzure

      # @return [Coordinate]
      attr_accessor :pupil_left

      # @return [Coordinate]
      attr_accessor :pupil_right

      # @return [Coordinate]
      attr_accessor :nose_tip

      # @return [Coordinate]
      attr_accessor :mouth_left

      # @return [Coordinate]
      attr_accessor :mouth_right

      # @return [Coordinate]
      attr_accessor :eyebrow_left_outer

      # @return [Coordinate]
      attr_accessor :eyebrow_left_inner

      # @return [Coordinate]
      attr_accessor :eye_left_outer

      # @return [Coordinate]
      attr_accessor :eye_left_top

      # @return [Coordinate]
      attr_accessor :eye_left_bottom

      # @return [Coordinate]
      attr_accessor :eye_left_inner

      # @return [Coordinate]
      attr_accessor :eyebrow_right_inner

      # @return [Coordinate]
      attr_accessor :eyebrow_right_outer

      # @return [Coordinate]
      attr_accessor :eye_right_inner

      # @return [Coordinate]
      attr_accessor :eye_right_top

      # @return [Coordinate]
      attr_accessor :eye_right_bottom

      # @return [Coordinate]
      attr_accessor :eye_right_outer

      # @return [Coordinate]
      attr_accessor :nose_root_left

      # @return [Coordinate]
      attr_accessor :nose_root_right

      # @return [Coordinate]
      attr_accessor :nose_left_alar_top

      # @return [Coordinate]
      attr_accessor :nose_right_alar_top

      # @return [Coordinate]
      attr_accessor :nose_left_alar_out_tip

      # @return [Coordinate]
      attr_accessor :nose_right_alar_out_tip

      # @return [Coordinate]
      attr_accessor :upper_lip_top

      # @return [Coordinate]
      attr_accessor :upper_lip_bottom

      # @return [Coordinate]
      attr_accessor :under_lip_top

      # @return [Coordinate]
      attr_accessor :under_lip_bottom


      #
      # Mapper for FaceLandmarks class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FaceLandmarks',
          type: {
            name: 'Composite',
            class_name: 'FaceLandmarks',
            model_properties: {
              pupil_left: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pupilLeft',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              pupil_right: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pupilRight',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_tip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseTip',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              mouth_left: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mouthLeft',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              mouth_right: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mouthRight',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eyebrow_left_outer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyebrowLeftOuter',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eyebrow_left_inner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyebrowLeftInner',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_left_outer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeLeftOuter',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_left_top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeLeftTop',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_left_bottom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeLeftBottom',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_left_inner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeLeftInner',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eyebrow_right_inner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyebrowRightInner',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eyebrow_right_outer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyebrowRightOuter',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_right_inner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeRightInner',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_right_top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeRightTop',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_right_bottom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeRightBottom',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              eye_right_outer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eyeRightOuter',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_root_left: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseRootLeft',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_root_right: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseRootRight',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_left_alar_top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseLeftAlarTop',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_right_alar_top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseRightAlarTop',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_left_alar_out_tip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseLeftAlarOutTip',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              nose_right_alar_out_tip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noseRightAlarOutTip',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              upper_lip_top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upperLipTop',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              upper_lip_bottom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upperLipBottom',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              under_lip_top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'underLipTop',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              },
              under_lip_bottom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'underLipBottom',
                type: {
                  name: 'Composite',
                  class_name: 'Coordinate'
                }
              }
            }
          }
        }
      end
    end
  end
end
