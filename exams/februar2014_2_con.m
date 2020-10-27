function [c, ceq] = februar2014_2_con(x)
    % . pomeni da delamo operacijo nad vsakim posameznih elementon (ne kvadriramo vektorsko ampak po elementah)
    c = [];
    ceq = sum(x.^2)-1;
end