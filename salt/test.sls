test:
  file.managed:
    - name: /home/vzj/test.py
    - source: salt://test.py
    - user: root
    - passwd: root
    - mod: 755

  cmd.run:
    - cwd: /home/vzj
    - name: python3 ./test.py
