FROM jenkins/ssh-agent

USER root

RUN apt-get update 

ARG SSH_PUBLIC_KEY
RUN mkdir -p /home/jenkins/.ssh && \
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDssUmh3xDoEtoXGWByA9NXYk12jGVLUUh2CW9mJjLCJ/p2DHbb+9NIOvwHGekuDTCM7n93oBMte8jiM0tI4axVYy02C7a8hLsrR1vvAGym0/WjmiprvNBxi+AuqIDFBsVzkvPVmElCBBRQy/F/fhCnqGJWGTI8NYynIedASyfTL03BV0cAfCBdDITyF4qQnkoPBVKBUntxsHeRW/FFSTvfuvF7CcSJT0X0G/i/teeZuDM/fFRus1H9IucdswKlxvFWrghbjkcb8bxHFTuxd4cyUYizL0hr4PdngS6VZI+n8lFCqukYR0QFs0hsBZ+5G03pdO721K7/hqqGli3ypptYg8yVsc3eIrPISu+eL+t8k5lC5fu65O4ZUuD7Wi4HRdT54toxIaOLkKb9HZH2IEsLFYdMz9HarExw1KELSTCdYAVLmi4p1eD2U0fVS1N1XBR5zu9zQ1e3VyGEaT6+wC1p1l3ZRF2VBY3rffHkSDkL55lWmx3u1cletlFZf2T7w28= asenic@ENDAUTOF7y81h9J" > /home/jenkins/.ssh/authorized_keys && \
    chown -R jenkins:jenkins /home/jenkins/.ssh && \
    chmod 700 /home/jenkins/.ssh && \
    chmod 600 /home/jenkins/.ssh/authorized_keys

EXPOSE 22

USER jenkins

