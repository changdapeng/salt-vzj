minion_conf_set:
  file.managed:
    - source: salt://minion_id/file/minion
    - name: /etc/salt/minion
    - user: root
    - group: root
    - mod: 644
    - template: jinja

minion_id_set:
  file.managed:
    - source: salt://minion_id/file/minion_id
    - name: /etc/salt/minion_id
    - user: root
    - group: root
    - mod: 644
    - template: jinja

salt-minion:  
  service.running:
    - enable: True
    - watch:
      - file: minion_id_set
      - file: minion_conf_set
    
