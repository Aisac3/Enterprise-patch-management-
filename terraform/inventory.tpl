[controller]

%{ for instance in controller ~}
${instance}
%{ endfor ~}

[dev]

%{ for instance in dev ~}
${instance}
%{ endfor ~}

[test]

%{ for instance in test ~}
${instance}
%{ endfor ~}

[prod]

%{ for instance in prod ~}
${instance}
%{ endfor ~}
