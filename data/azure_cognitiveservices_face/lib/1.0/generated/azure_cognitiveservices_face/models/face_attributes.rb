# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Face Attributes
    #
    class FaceAttributes

      include MsRestAzure

      # @return [Float] Age in years
      attr_accessor :age

      # @return [Gender] Possible gender of the face. Possible values include:
      # 'male', 'female', 'genderless'
      attr_accessor :gender

      # @return [Float] Smile intensity, a number between [0,1]
      attr_accessor :smile

      # @return [FacialHair] Properties describing facial hair attributes.
      attr_accessor :facial_hair

      # @return [GlassesType] Glasses type if any of the face. Possible values
      # include: 'noGlasses', 'readingGlasses', 'sunglasses', 'swimmingGoggles'
      attr_accessor :glasses

      # @return [HeadPose] Properties indicating head pose of the face.
      attr_accessor :head_pose

      # @return [Emotion] Properties describing facial emotion in form of
      # confidence ranging from 0 to 1.
      attr_accessor :emotion

      # @return [Hair] Properties describing hair attributes.
      attr_accessor :hair

      # @return [Makeup] Properties describing present makeups on a given face.
      attr_accessor :makeup

      # @return [Occlusion] Properties describing occlusions on a given face.
      attr_accessor :occlusion

      # @return [Array<Accessory>] Properties describing any accessories on a
      # given face.
      attr_accessor :accessories

      # @return [Blur] Properties describing any presence of blur within the
      # image.
      attr_accessor :blur

      # @return [Exposure] Properties describing exposure level of the image.
      attr_accessor :exposure

      # @return [Noise] Properties describing noise level of the image.
      attr_accessor :noise


      #
      # Mapper for FaceAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FaceAttributes',
          type: {
            name: 'Composite',
            class_name: 'FaceAttributes',
            model_properties: {
              age: {
                client_side_validation: true,
                required: false,
                serialized_name: 'age',
                type: {
                  name: 'Double'
                }
              },
              gender: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gender',
                type: {
                  name: 'Enum',
                  module: 'Gender'
                }
              },
              smile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smile',
                type: {
                  name: 'Double'
                }
              },
              facial_hair: {
                client_side_validation: true,
                required: false,
                serialized_name: 'facialHair',
                type: {
                  name: 'Composite',
                  class_name: 'FacialHair'
                }
              },
              glasses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'glasses',
                type: {
                  name: 'Enum',
                  module: 'GlassesType'
                }
              },
              head_pose: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headPose',
                type: {
                  name: 'Composite',
                  class_name: 'HeadPose'
                }
              },
              emotion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'emotion',
                type: {
                  name: 'Composite',
                  class_name: 'Emotion'
                }
              },
              hair: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hair',
                type: {
                  name: 'Composite',
                  class_name: 'Hair'
                }
              },
              makeup: {
                client_side_validation: true,
                required: false,
                serialized_name: 'makeup',
                type: {
                  name: 'Composite',
                  class_name: 'Makeup'
                }
              },
              occlusion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'occlusion',
                type: {
                  name: 'Composite',
                  class_name: 'Occlusion'
                }
              },
              accessories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AccessoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Accessory'
                      }
                  }
                }
              },
              blur: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blur',
                type: {
                  name: 'Composite',
                  class_name: 'Blur'
                }
              },
              exposure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exposure',
                type: {
                  name: 'Composite',
                  class_name: 'Exposure'
                }
              },
              noise: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noise',
                type: {
                  name: 'Composite',
                  class_name: 'Noise'
                }
              }
            }
          }
        }
      end
    end
  end
end
