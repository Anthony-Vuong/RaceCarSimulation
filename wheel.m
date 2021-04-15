%Class that defines wheel dimensions and methods
classdef wheel
    properties
        width{}, diameter{}
    end
    methods
        function obj = wheel(width_, diameter_)
            if nargin == 2
                obj.width = width_;
                obj.diameter = diameter_;
            end
        end
        function vel = velocity(obj, rpm_)
            %Circumference in mm
            c = obj.diameter * pi * 25.4;
            %Linear Velocity
            lv = rpm_ * c;
            %wheel speed in kmh
            vel = lv / 16667;
        end
        function alpha = acceleration(obj, deltaTime_, deltaVelocity_)
            alpha = deltaTime_ / deltaVelocity_;     
        end
    end
end
        




