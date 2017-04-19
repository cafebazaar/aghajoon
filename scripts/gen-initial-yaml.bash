#!/bin/bash
# set -e
set -x
source ./scripts/common.bash

cat <<YAML
cluster-variables:
  coreos-version: "1248.4.0"
  net-conf: '{"netmask":"255.255.255.0", "classlessRouteOption": [{"router": "172.20.0.1", "size":24, "destination": "172.20.0.0"}]}'
  cluster_name: "cafecluster"
  internal_net_conf: '{"netmask":"255.255.255.0", "classlessRouteOption": [{"router": "172.20.0.1", "size":24, "destination": "172.20.0.0"}]}'
  bootstrapper1_hostname: "bootstrapper1"
  bootstrapper1_ip: "172.20.0.11"
  bootstrapper2_hostname: "bootstrapper2"
  bootstrapper2_ip: "172.20.0.12"
  bootstrapper3_hostname: "bootstrapper3"
  bootstrapper3_ip: "172.20.0.13"
  internal_network_netsize: "24"
  external_network_netsize: "24"
  internal_network_gateway_ip: "172.20.0.1"
  external_dns: "8.8.8.8"
  pod_network: "10.1.0.0/16"
  service_ip_range: "10.100.0.0/16"
  k8s_service_ip: "10.100.0.1"
  dns_server_ip: "10.100.0.10"
  k8s_lb_dns: "k8s.roo.cloud"
  gateway: "172.21.0.1"
  http_proxy: "172.20.0.1:8118"
  https_proxy: "172.20.0.1:8118"
  k8s_version: "v1.4.5_coreos.0"
  bob: $BobIP
  master: master.cafecluster
  hyperkube_image: "quay.io/coreos/hyperkube:v1.6.1_coreos.0"
  ca: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURWakNDQWo2Z0F3SUJBZ0lKQU5KM0RrV3Q4ZUgvTUEwR0NTcUdTSWIzRFFFQkN3VUFNQ0V4SHpBZEJnTlYKQkFNTUZqRTNNaTR4T1M0eExqRXhRREUwTnpjeE5UZzVNREF3SGhjTk1UWXhNREl5TVRjMU5UQXdXaGNOTWpZeApNREl3TVRjMU5UQXdXakFoTVI4d0hRWURWUVFEREJZeE56SXVNVGt1TVM0eE1VQXhORGMzTVRVNE9UQXdNSUlCCklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUEyNmdOc1lYVG1oS2lab3JNdzg4dERzdWoKS1JSN3NhMEc2eG1hYnNxZEhNNU1BcUVsRnczc2k1K3U3U0trc0ppcHVmaXJwbmIrZXlGdDJsSHVOaHVualdQZQpWS0QzcysxckZzZm01VUNPbUd3TzRMZUxLdkxGUWpGY29tL0lneXBVcWFKcXNTWE1jMWxIcjN6OU9YOHlYTVdqCnluU1VUTmtKdFZjUTlROUlucDZDZnJDN2xDWEhqbWc1NkVzd0ZUajVtNDhBZ291ZnZ2aGw1NkhDWGgrNUE4S3QKWkRTNmZUTXdPbURLZlpZMmVockNlSzZtZWdYbjJiSGYyQTJ3RCtlZnpHaGxoM1ZZRmtGaXFBQkIyNlk3UG1vRwpkdTVjMkJHdFFRVkVDZXhrbkZtQ3RMTWt1eXZML3l3cTBDRzgreXMrRGRJZ1F5YzI1eUFUdTFtU1h1bVkxd0lECkFRQUJvNEdRTUlHTk1CMEdBMVVkRGdRV0JCUVFYQS8xdTdadzE5V1FZRGIxelpyeExPYXNGREJSQmdOVkhTTUUKU2pCSWdCUVFYQS8xdTdadzE5V1FZRGIxelpyeExPYXNGS0VscENNd0lURWZNQjBHQTFVRUF3d1dNVGN5TGpFNQpMakV1TVRGQU1UUTNOekUxT0Rrd01JSUpBTkozRGtXdDhlSC9NQXdHQTFVZEV3UUZNQU1CQWY4d0N3WURWUjBQCkJBUURBZ0VHTUEwR0NTcUdTSWIzRFFFQkN3VUFBNElCQVFCcytERUU1NVNHdld1RFkyQy9ReWJvRnRYaGZ4RisKK0grcnpzbDNmMTlpUW9EczZIeXFLekVMbWplUm8ydWNDY1VTL09wbThnVnplZjdLdFJ4aTdDWDIrQjhMQ014bgp4dmRKc2pOSmdPdGsyTHhnVDdXZWpmODRkbXFISVpyZks1TlhDREFWMEFEZ1BvMUduQVRwRlhBQjJ5YlBtaUVECkFiVW5LaUVsUU5aMCs2MEs2ay8yTDFZWlZtdldRazcxWVFnRzYvWHZaRE5VMEMycjZzeVljOWZCUWpEMTNWb0wKNlI1SitaTWpIMm1UWlh0bzVSNzBBaEdvUmtnK2ZzMzJKRlA2R2w3b2g5Vm9mc0VhU1ZqTWRpWmFrTUpRNTFTSwpjelB6ZWkyOTZ0NDVuWGZFUXl6azF3TWNIckxsUzgybXlXaUVpWDQ4Y3NqZ1llNUNWLzNHNlhBVwotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
  apiserver-cert: "Q2VydGlmaWNhdGU6CiAgICBEYXRhOgogICAgICAgIFZlcnNpb246IDMgKDB4MikKICAgICAgICBTZXJpYWwgTnVtYmVyOiAxICgweDEpCiAgICBTaWduYXR1cmUgQWxnb3JpdGhtOiBzaGEyNTZXaXRoUlNBRW5jcnlwdGlvbgogICAgICAgIElzc3VlcjogQ049MTcyLjE5LjEuMTFAMTQ3NzE1ODkwMAogICAgICAgIFZhbGlkaXR5CiAgICAgICAgICAgIE5vdCBCZWZvcmU6IE9jdCAyMiAxNzo1NTowMCAyMDE2IEdNVAogICAgICAgICAgICBOb3QgQWZ0ZXIgOiBPY3QgMjAgMTc6NTU6MDAgMjAyNiBHTVQKICAgICAgICBTdWJqZWN0OiBDTj1rdWJlcm5ldGVzLW1hc3RlcgogICAgICAgIFN1YmplY3QgUHVibGljIEtleSBJbmZvOgogICAgICAgICAgICBQdWJsaWMgS2V5IEFsZ29yaXRobTogcnNhRW5jcnlwdGlvbgogICAgICAgICAgICAgICAgUHVibGljLUtleTogKDIwNDggYml0KQogICAgICAgICAgICAgICAgTW9kdWx1czoKICAgICAgICAgICAgICAgICAgICAwMDo5Yjo5ODo1ZTowODoxOToxYzphYzphZjpjZjoyODoxYzo4ZDo2Mjo2NzoKICAgICAgICAgICAgICAgICAgICBlNTphMzpmZTpjZDo4NTpiODpjMTpjYjoxNTowNDo2YTo2MDo5MTpkOTo4OToKICAgICAgICAgICAgICAgICAgICAzMDplMDpkNjowYzo2NzowMjpiZTowNjpmMDo1OTo4NTpjNjo3Njo1OTpjMzoKICAgICAgICAgICAgICAgICAgICBjNToxNTpiZTo4OToyYToyNDo5Mjo3ZjplYjplNzo3Zjo5Yjo3NzowNDo2YzoKICAgICAgICAgICAgICAgICAgICA4YzphODoxNzo1Yjo1YjpjYjozYTplNzozNDplNTowMzoxMDplNDowMzoyMjoKICAgICAgICAgICAgICAgICAgICA2NTo4YTozMzo4Zjo2Njo0MDo5ZDphZjo5ZDplMjo1MzoyODpkOToyYjoyMToKICAgICAgICAgICAgICAgICAgICA0MjowNDplZTplNTo3OTphMDphYjo5NTpiNDo3ZjozZDplMDo3MjozZDpjYToKICAgICAgICAgICAgICAgICAgICAxYjpjODowMjplYzphOTpjYjo5ZDo2OTo1NjozMDoxNzo1NTo4MTplZTpmODoKICAgICAgICAgICAgICAgICAgICA1YTplYTo2ZDowODoxNDo5MTo2Mzo4NzowZDo2ZjpmNDo0Mzo3NTpkZDoxYjoKICAgICAgICAgICAgICAgICAgICBlNjpjODo0NTo1Nzo4YjoyOTphOTplYzo4ZTphMTowNzo1ODpiMDpmMjoxODoKICAgICAgICAgICAgICAgICAgICAwZjo4MDphYTplZjozMzozNjplNDphNTo5ZTplZTo5ZTo3YTozZDphOTpkNToKICAgICAgICAgICAgICAgICAgICBiNToxNDoxNDplMzo5NzphNzowNjpkNzo1Njo5NzpmMDplODpmMDo1YjpkMToKICAgICAgICAgICAgICAgICAgICA4ODpjNDplZTo4Nzo5ZDowZjoyNjozZjozZTpiNDphYzowZTplMDplNDo3ZDoKICAgICAgICAgICAgICAgICAgICBiMjpkMjphZDowMjo5MTpkMTo4ODowMDoxMzo0MjphYjpiYzpiYzozZjphYzoKICAgICAgICAgICAgICAgICAgICBhZjo5NDo2Yjo5MjoyZTpjYTpmMjo0ZjpiMzozYzpkMzo3MTo2MTpkYTo5MDoKICAgICAgICAgICAgICAgICAgICBkMjpiZjo1Njo3ZjowMzowNjphNzo2ZDpjMToxMDplODpjMDo1MTpjNTo1NzoKICAgICAgICAgICAgICAgICAgICA4Njo4ZTpjNToxNTpiOTpjZjpjYzo0ZDo2YjoyNzoyYTpiOTowNTowYjozNToKICAgICAgICAgICAgICAgICAgICA4NDo5YgogICAgICAgICAgICAgICAgRXhwb25lbnQ6IDY1NTM3ICgweDEwMDAxKQogICAgICAgIFg1MDl2MyBleHRlbnNpb25zOgogICAgICAgICAgICBYNTA5djMgQmFzaWMgQ29uc3RyYWludHM6IAogICAgICAgICAgICAgICAgQ0E6RkFMU0UKICAgICAgICAgICAgWDUwOXYzIFN1YmplY3QgS2V5IElkZW50aWZpZXI6IAogICAgICAgICAgICAgICAgRjA6MDI6MEI6Q0M6Qjg6NjU6RDM6OEM6NTM6NUI6NTk6RTE6MzQ6Qzc6QTg6MUY6QjM6M0M6Mjc6MUQKICAgICAgICAgICAgWDUwOXYzIEF1dGhvcml0eSBLZXkgSWRlbnRpZmllcjogCiAgICAgICAgICAgICAgICBrZXlpZDoxMDo1QzowRjpGNTpCQjpCNjo3MDpENzpENTo5MDo2MDozNjpGNTpDRDo5QTpGMToyQzpFNjpBQzoxNAogICAgICAgICAgICAgICAgRGlyTmFtZTovQ049MTcyLjE5LjEuMTFAMTQ3NzE1ODkwMAogICAgICAgICAgICAgICAgc2VyaWFsOkQyOjc3OjBFOjQ1OkFEOkYxOkUxOkZGCgogICAgICAgICAgICBYNTA5djMgRXh0ZW5kZWQgS2V5IFVzYWdlOiAKICAgICAgICAgICAgICAgIFRMUyBXZWIgU2VydmVyIEF1dGhlbnRpY2F0aW9uCiAgICAgICAgICAgIFg1MDl2MyBLZXkgVXNhZ2U6IAogICAgICAgICAgICAgICAgRGlnaXRhbCBTaWduYXR1cmUsIEtleSBFbmNpcGhlcm1lbnQKICAgICAgICAgICAgWDUwOXYzIFN1YmplY3QgQWx0ZXJuYXRpdmUgTmFtZTogCiAgICAgICAgICAgICAgICBJUCBBZGRyZXNzOjE3Mi4xOS4xLjExLCBJUCBBZGRyZXNzOjE3Mi4xOS4xLjEyLCBJUCBBZGRyZXNzOjE3Mi4xOS4xLjEzLCBJUCBBZGRyZXNzOjEwLjEwMC4wLjEsIEROUzpib290c3RyYXBwZXIxLCBETlM6Ym9vdHN0cmFwcGVyMS5jYWZlY2x1c3RlciwgRE5TOmt1YmVybmV0ZXMsIEROUzprdWJlcm5ldGVzLmRlZmF1bHQsIEROUzprdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLCBETlM6a3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jYWZlY2x1c3RlciwgRE5TOm1hc3Rlci5jYWZlY2x1c3RlciwgRE5TOms4cy5yb28uY2xvdWQKICAgIFNpZ25hdHVyZSBBbGdvcml0aG06IHNoYTI1NldpdGhSU0FFbmNyeXB0aW9uCiAgICAgICAgIGM0OjkyOmMyOmRjOjE5OmVlOjU1OmJhOmRjOjRmOjI3OmY5OjRjOmU3OmNhOjU1OmM2OjUyOgogICAgICAgICA3ODo5MTo2NzoxNjozOTo4Zjo4NTphNjo4ZDo0NDpjODpjZjo2Yzo5MzpmYjo4NDozOToxNToKICAgICAgICAgM2E6M2Q6Y2E6YjA6ZTU6MWU6Zjc6MGE6ZjM6NWM6OWI6OTM6YzE6OGQ6MjM6YjY6NTE6NTk6CiAgICAgICAgIDEwOmU2OmMyOjY4OjQ2OjU4OjRmOjk0OjgzOjkyOmEwOjgxOmY5OmU4OmFkOmM0OmVkOmIyOgogICAgICAgICA5NTpjYjpjNDpiZjo1YjozZjo3ZDpkOTpjZToyOTpiMDoyZjplNDoxYzpmNzozZTo0MzoxNDoKICAgICAgICAgNzk6Yjk6Zjg6NWY6NTQ6NGU6YzY6OGU6OTY6NGY6YmY6NDQ6OTI6MTQ6N2I6NmY6M2E6YTI6CiAgICAgICAgIDQ1OmE4OmVmOmY1OmQxOjFjOjdiOjE5OjFjOjdhOjI1OjRjOjJlOjc3OmM4OmNiOjM5OjU0OgogICAgICAgICBhZTphYjowMTpjNTphZTo1YTplYzpmZjo4YjpiYTpiNDpmMzo2Mzo3Mzo5ZDo0Nzo2Zjo4ZDoKICAgICAgICAgMTk6OWI6ODk6NmM6Y2U6ZjA6ZGE6NDk6YzM6NjM6ZTY6YzA6NDc6ODE6MmQ6M2U6NWI6ZDA6CiAgICAgICAgIDg4OmRmOjBkOjYxOmVhOjg1OmUwOjJhOjIwOmE4OjQ3Ojk5OjcyOmE5OjVmOjNmOmQ2OjM2OgogICAgICAgICA3NjpiMzoxMDplOTplMDozNDo1ZDozNDozNTpiMzoyMTpmMjo2Njo5ZDo0ZDoyMDo5OTo0MToKICAgICAgICAgYjI6MDk6OWY6MzA6NmQ6ODU6NzI6NDk6YTc6YjE6OTI6MzY6YmU6MDY6ZGM6NDU6Y2I6NzM6CiAgICAgICAgIDAyOmRhOmUwOjIxOmNhOmUwOjU2OjJkOjVjOjM1OjJlOjUzOjYzOmUzOmYzOmNjOmFhOmQ2OgogICAgICAgICBhNTozZDplMToxYjo1YTo1Njo3MzozZjo0YjpjZDo2Zjo3NTowNDowZTozYzo3ZjpkYjpjODoKICAgICAgICAgYjI6NTQ6NGE6MTgKLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUVMRENDQXhTZ0F3SUJBZ0lCQVRBTkJna3Foa2lHOXcwQkFRc0ZBREFoTVI4d0hRWURWUVFEREJZeE56SXUKTVRrdU1TNHhNVUF4TkRjM01UVTRPVEF3TUI0WERURTJNVEF5TWpFM05UVXdNRm9YRFRJMk1UQXlNREUzTlRVdwpNRm93SERFYU1CZ0dBMVVFQXd3UmEzVmlaWEp1WlhSbGN5MXRZWE4wWlhJd2dnRWlNQTBHQ1NxR1NJYjNEUUVCCkFRVUFBNElCRHdBd2dnRUtBb0lCQVFDYm1GNElHUnlzcjg4b0hJMWlaK1dqL3MyRnVNSExGUVJxWUpIWmlURGcKMWd4bkFyNEc4Rm1GeG5aWnc4VVZ2b2txSkpKLzYrZC9tM2NFYkl5b0YxdGJ5enJuTk9VREVPUURJbVdLTTQ5bQpRSjJ2bmVKVEtOa3JJVUlFN3VWNW9LdVZ0SDg5NEhJOXlodklBdXlweTUxcFZqQVhWWUh1K0ZycWJRZ1VrV09ICkRXLzBRM1hkRytiSVJWZUxLYW5zanFFSFdMRHlHQStBcXU4ek51U2xudTZlZWoycDFiVVVGT09YcHdiWFZwZncKNlBCYjBZakU3b2VkRHlZL1ByU3NEdURrZmJMU3JRS1IwWWdBRTBLcnZMdy9ySytVYTVJdXl2SlBzenpUY1dIYQprTksvVm44REJxZHR3UkRvd0ZIRlY0YU94Ulc1ejh4TmF5Y3F1UVVMTllTYkFnTUJBQUdqZ2dGeU1JSUJiakFKCkJnTlZIUk1FQWpBQU1CMEdBMVVkRGdRV0JCVHdBZ3ZNdUdYVGpGTmJXZUUweDZnZnN6d25IVEJSQmdOVkhTTUUKU2pCSWdCUVFYQS8xdTdadzE5V1FZRGIxelpyeExPYXNGS0VscENNd0lURWZNQjBHQTFVRUF3d1dNVGN5TGpFNQpMakV1TVRGQU1UUTNOekUxT0Rrd01JSUpBTkozRGtXdDhlSC9NQk1HQTFVZEpRUU1NQW9HQ0NzR0FRVUZCd01CCk1Bc0dBMVVkRHdRRUF3SUZvRENCekFZRFZSMFJCSUhFTUlIQmh3U3NFd0VMaHdTc0V3RU1od1NzRXdFTmh3UUsKWkFBQmdnMWliMjkwYzNSeVlYQndaWEl4Z2hsaWIyOTBjM1J5WVhCd1pYSXhMbU5oWm1WamJIVnpkR1Z5Z2dwcgpkV0psY201bGRHVnpnaEpyZFdKbGNtNWxkR1Z6TG1SbFptRjFiSFNDRm10MVltVnlibVYwWlhNdVpHVm1ZWFZzCmRDNXpkbU9DSW10MVltVnlibVYwWlhNdVpHVm1ZWFZzZEM1emRtTXVZMkZtWldOc2RYTjBaWEtDRW0xaGMzUmwKY2k1allXWmxZMngxYzNSbGNvSU5hemh6TG5KdmJ5NWpiRzkxWkRBTkJna3Foa2lHOXcwQkFRc0ZBQU9DQVFFQQp4SkxDM0JudVZicmNUeWY1VE9mS1ZjWlNlSkZuRmptUGhhYU5STWpQYkpQN2hEa1ZPajNLc09VZTl3cnpYSnVUCndZMGp0bEZaRU9iQ2FFWllUNVNEa3FDQitlaXR4TzJ5bGN2RXYxcy9mZG5PS2JBdjVCejNQa01VZWJuNFgxUk8KeG82V1Q3OUVraFI3YnpxaVJhanY5ZEVjZXhrY2VpVk1MbmZJeXpsVXJxc0J4YTVhN1ArTHVyVHpZM09kUjIrTgpHWnVKYk03dzJrbkRZK2JBUjRFdFBsdlFpTjhOWWVxRjRDb2dxRWVaY3FsZlA5WTJkck1RNmVBMFhUUTFzeUh5ClpwMU5JSmxCc2dtZk1HMkZja21uc1pJMnZnYmNSY3R6QXRyZ0ljcmdWaTFjTlM1VFkrUHp6S3JXcFQzaEcxcFcKY3o5THpXOTFCQTQ4Zjl2SXNsUktHQT09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
  apiserver-key: "LS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCk1JSUV2Z0lCQURBTkJna3Foa2lHOXcwQkFRRUZBQVNDQktnd2dnU2tBZ0VBQW9JQkFRQ2JtRjRJR1J5c3I4OG8KSEkxaVorV2ovczJGdU1ITEZRUnFZSkhaaVREZzFneG5BcjRHOEZtRnhuWlp3OFVWdm9rcUpKSi82K2QvbTNjRQpiSXlvRjF0Ynl6cm5OT1VERU9RREltV0tNNDltUUoydm5lSlRLTmtySVVJRTd1VjVvS3VWdEg4OTRISTl5aHZJCkF1eXB5NTFwVmpBWFZZSHUrRnJxYlFnVWtXT0hEVy8wUTNYZEcrYklSVmVMS2Fuc2pxRUhXTER5R0ErQXF1OHoKTnVTbG51NmVlajJwMWJVVUZPT1hwd2JYVnBmdzZQQmIwWWpFN29lZER5WS9QclNzRHVEa2ZiTFNyUUtSMFlnQQpFMEtydkx3L3JLK1VhNUl1eXZKUHN6elRjV0hha05LL1ZuOERCcWR0d1JEb3dGSEZWNGFPeFJXNXo4eE5heWNxCnVRVUxOWVNiQWdNQkFBRUNnZ0VBVlF3TnFjT0FKdXZhQVlUSnl4WWJNVzZmREE2Vzd0aElGNVU5WTNoWG5TMmkKamRPejVyc05VOC9NOVBmTEREMmZYOGVwdy81QUJVSUc1Z1luUStHd2NCWS8xZ3pWZUwyTXhDSFMrcDJBTGxYMwpXdnlqcnV6Tzk0SXdRZDRLMUZaOE0xSDdrdWpSeVBCbUN3ZCtNTGs1QzFDdTdMSXlXVnFxNXlROW5IQnp4R2M3Cmplc05kdVNkL3NJT2wyNUU4Ry9QaTdXVEh0c3M2WHBxUW1pbEMyUGNWY1ZBTkwwYlc0S3dMMzQ0aFl3U29GeWEKWlJuWFlvNTNTQUxLWjdVNll2NGxXN1gzN29tUEpXTHo5N1BCc25yaHIwSWpWWE1FeDV4SzJuRlIwdVdJeTVsSgpjQmZsVksxT3RsS0JMNFpkdVF2SjhhUlFNbU51bm0vdStzMnNXTXFNZ1FLQmdRRE80cU4yMXBvcjlZZm5OYXp0CmhIbzRkMHZTWGFpN3BTamQ2QlNac1BsUVMxNHpVMndPeUlFUzB6S2lHWkxMMTV5dmQ5SUtOc1ZjWlFwOFpqMWgKNlZNZ0lSQnMvVHRnL28xMUIraENVQzdyNjBRUEo5WmFwMVhiejRwamV6Q013d3lxOHNHRjRQY3VpeGN5RVU0Zgo1QzUxOHljcG1wdzd5QTFnQ2laMU5XODFld0tCZ1FEQWlKZzlWQm92aXg0eEtic0ZrUnY0TWdZTHVsMjRhdVl3Cjdwd096NWZpakJrblJEVmRrWTRadXpmeTRzQW12Y0hra3k4dnJ5MnZ3TjlGTVkxZzhBbS9MWXJHbjVlR0hLSmEKeVZpdmp1ZDQwRGNLVm1JczVBWlgzdjNlVFlZY3UrbVpXS2d6Zy9LcGY0aWRTMDYyQWRvTDg5U3QrS3VoeGY2dApWbXhuNldSellRS0JnUUM2cUI2bHBMK2FzNzgzS3VWbnNxUDIrQ012bkpNVklkRTZUUjd3LzR3aEZxN2FEZ1VyClhWbWZHMi9PY3RaUUZhdG5ZT3JmamtVSXRKeitXZHc5ejU3UkdTUFJ3YlBtTWlSOGwzTEZDY1ViMDdzbkZXRS8KajBSV3V1eDREdmhodDhWaEl2N1poSHhmd054ZnJ0OVd4Sy9xZVVRM05DaUxnMVlWOVhKM1E0dWZxd0tCZ1FDWApnZVhyUE9kdVNsZHo4SmJQaHFVdjVvMkRaU0NqSXR3SjNYckkzT3QweHpKMEIrVEd3T2ZGcitJVExBUnhlQm5BCk9XS0ViNkhRRUVLaVBLQTRqQ3ZmV1lNL1VnNzI1a21NajYxT1dYSWxUQlJEK2o0L2ZTRFF2UldoZmZmdlhLQXkKbitXY3hGU010V05ZQkE3b2d3U0hLMVZOb2NYT0EvU3Bpcnk3K0ptbmdRS0JnRUdnYTdTMW5oallFOUhFZzNxOQoya2JtbkdjQUdTYUwxaFB4U2J4ZE80RUwwZ0M1UHU1NlJFdUNBelRoY2FoS0JGVDgxTStZdEF0REh6ZUFCZ2hiCm90bi96TFQwb2hxN3VVTklxdFFuNHJnUy9lVWNQQkEvMktOVllNeWZEMjU4RHU0THIwNHpKZmIvZlB1YlFGKy8KWndMYmIwUUcydHd3V29lMTdLL29tV29KCi0tLS0tRU5EIFBSSVZBVEUgS0VZLS0tLS0K"
  machine-cert: "Q2VydGlmaWNhdGU6CiAgICBEYXRhOgogICAgICAgIFZlcnNpb246IDMgKDB4MikKICAgICAgICBTZXJpYWwgTnVtYmVyOiAyICgweDIpCiAgICBTaWduYXR1cmUgQWxnb3JpdGhtOiBzaGEyNTZXaXRoUlNBRW5jcnlwdGlvbgogICAgICAgIElzc3VlcjogQ049MTcyLjE5LjEuMTFAMTQ3NzE1ODkwMAogICAgICAgIFZhbGlkaXR5CiAgICAgICAgICAgIE5vdCBCZWZvcmU6IE9jdCAyMiAxNzo1NTowMCAyMDE2IEdNVAogICAgICAgICAgICBOb3QgQWZ0ZXIgOiBPY3QgMjAgMTc6NTU6MDAgMjAyNiBHTVQKICAgICAgICBTdWJqZWN0OiBDTj1tYWNoaW5lCiAgICAgICAgU3ViamVjdCBQdWJsaWMgS2V5IEluZm86CiAgICAgICAgICAgIFB1YmxpYyBLZXkgQWxnb3JpdGhtOiByc2FFbmNyeXB0aW9uCiAgICAgICAgICAgICAgICBQdWJsaWMtS2V5OiAoMjA0OCBiaXQpCiAgICAgICAgICAgICAgICBNb2R1bHVzOgogICAgICAgICAgICAgICAgICAgIDAwOmUyOmNmOjliOjMyOjY5OmFlOjkyOjUzOjBhOmNiOmYyOjhiOjQ3OjVhOgogICAgICAgICAgICAgICAgICAgIDZjOmUzOmFmOmNmOjg5OjZmOjk3OjkwOjkxOmRlOmZhOjRhOjU4OjI5OmY4OgogICAgICAgICAgICAgICAgICAgIGU3OmRlOmU4OmUxOjMyOmIxOjMyOjJiOmUxOjAzOmMyOmY1OjdhOmExOjY0OgogICAgICAgICAgICAgICAgICAgIDFkOjRjOjRmOmQ4OmI1OjNkOjU3OjBiOjA2OjA2OmZlOjRmOjZlOmE3OmNjOgogICAgICAgICAgICAgICAgICAgIGMxOmFjOjFhOjU0OmYyOmNmOmRhOmFmOjE5OjdmOjNlOmM4OmU0OjVkOmVkOgogICAgICAgICAgICAgICAgICAgIDI5OmM2OjYyOjUzOmE3OmQzOmYyOjc4OmVkOjExOjFkOmVlOjFhOmJmOjc2OgogICAgICAgICAgICAgICAgICAgIDRlOmMxOjU0OjVhOjI3OmRkOjU1OmZkOjQ1OjhhOjJkOjEwOjUyOjEyOjhmOgogICAgICAgICAgICAgICAgICAgIDkwOmQ5OjRkOjk5OmU5OjEyOmI3OjgwOjA3OjA3OmUzOjhhOjhhOjM0OmQ5OgogICAgICAgICAgICAgICAgICAgIGQ2OjhkOjY2OjFiOjNjOmNkOjFjOmEwOjdkOjQxOmJiOjRjOmI3OjU0OjdjOgogICAgICAgICAgICAgICAgICAgIDg4Ojk0OmM5OjQ5OjBkOmUwOmNiOjE5OjEzOmM2OmZhOmVjOmVmOjMyOjc1OgogICAgICAgICAgICAgICAgICAgIGYxOjNiOjRmOmM1OjFjOjk4OjBmOjMwOjMxOjBmOmYwOmRhOjAzOjBiOmYzOgogICAgICAgICAgICAgICAgICAgIGQ2OmRiOjdhOmQ4OjA3OjM5OmI5OjlhOmEyOmVlOjMyOmI3OjBlOjdlOjhkOgogICAgICAgICAgICAgICAgICAgIGYyOjQzOmY1OjMwOmNkOmMwOjk4OjExOmFjOjBjOjM1OjdhOmU0OjRlOmMyOgogICAgICAgICAgICAgICAgICAgIDdmOjBiOjY1OjgxOmI2OmIzOjI0OmE4OjNlOjZjOmEzOmI1OmZkOjBkOjBjOgogICAgICAgICAgICAgICAgICAgIDI2OmU1OmZmOjA5OjkxOjg2Ojk5OjUyOjM1OjAwOjE0OmI1OmRiOmExOmQwOgogICAgICAgICAgICAgICAgICAgIGIyOjI0Ojg4OjNmOjY5OjBmOjNlOjc2OmQxOjM5OmE0OjI5OmRkOjQxOjY4OgogICAgICAgICAgICAgICAgICAgIDllOjIxOjY4OjE5OjZhOjQzOjYxOmQ3OjFiOjg3OjY1OmI0Ojc3OjVjOjE2OgogICAgICAgICAgICAgICAgICAgIDNiOmQxCiAgICAgICAgICAgICAgICBFeHBvbmVudDogNjU1MzcgKDB4MTAwMDEpCiAgICAgICAgWDUwOXYzIGV4dGVuc2lvbnM6CiAgICAgICAgICAgIFg1MDl2MyBCYXNpYyBDb25zdHJhaW50czogCiAgICAgICAgICAgICAgICBDQTpGQUxTRQogICAgICAgICAgICBYNTA5djMgU3ViamVjdCBLZXkgSWRlbnRpZmllcjogCiAgICAgICAgICAgICAgICBEOTpEMDpGMToxMDo3MjpDNDo5NzpDNDo1Qzo1NzpDODozRDo5MDoxRjoyQjpDQTo4Mjo5Njo1ODpFQwogICAgICAgICAgICBYNTA5djMgQXV0aG9yaXR5IEtleSBJZGVudGlmaWVyOiAKICAgICAgICAgICAgICAgIGtleWlkOjEwOjVDOjBGOkY1OkJCOkI2OjcwOkQ3OkQ1OjkwOjYwOjM2OkY1OkNEOjlBOkYxOjJDOkU2OkFDOjE0CiAgICAgICAgICAgICAgICBEaXJOYW1lOi9DTj0xNzIuMTkuMS4xMUAxNDc3MTU4OTAwCiAgICAgICAgICAgICAgICBzZXJpYWw6RDI6Nzc6MEU6NDU6QUQ6RjE6RTE6RkYKCiAgICAgICAgICAgIFg1MDl2MyBFeHRlbmRlZCBLZXkgVXNhZ2U6IAogICAgICAgICAgICAgICAgVExTIFdlYiBDbGllbnQgQXV0aGVudGljYXRpb24KICAgICAgICAgICAgWDUwOXYzIEtleSBVc2FnZTogCiAgICAgICAgICAgICAgICBEaWdpdGFsIFNpZ25hdHVyZQogICAgU2lnbmF0dXJlIEFsZ29yaXRobTogc2hhMjU2V2l0aFJTQUVuY3J5cHRpb24KICAgICAgICAgZDE6Y2M6M2U6NDg6Mjc6MjQ6ZmE6NGU6YzY6NzI6ZWQ6ZmQ6NjA6OGU6ZTc6OGY6YzU6YzA6CiAgICAgICAgIGVlOjg3OjNjOjAwOjA5OjliOmIwOmI0OmM0OmUwOjgwOjljOjU2Ojg0OjZlOjUwOmExOmM1OgogICAgICAgICA1ODo1ZjoyNTowNjpkNzpjYToxNzpkZToyNjoyODo1YjpiODowNDo3NjpkYTpmYzphNTo5ODoKICAgICAgICAgNTg6MDc6NGY6NzE6ODY6OTc6MDc6MmI6YWU6OTc6YTg6MDg6NDU6ZDA6OGE6YzE6MjE6MzM6CiAgICAgICAgIDM0OjM4OjczOmU4OjAwOmU3OmIzOjE1OmZmOmZiOmM0OjdiOjM1OjRhOjUxOmJjOmQxOjJjOgogICAgICAgICBjYTo0NTpkZDoxNDowMDo3ZTo3OTphODo0NTo0YzpmYzpmYjpiNzoxMzphOTo5OTo1NTpiNToKICAgICAgICAgYTM6ZWU6NDM6MGI6NGY6YWI6MzU6NzA6YjY6ODM6ZDQ6YWM6OGQ6YzM6MWQ6Nzc6YjY6OTY6CiAgICAgICAgIDA4OjIyOjUwOjA1OjY5OjNhOmU3OjAwOmI4Ojc4OmVhOmFmOjUzOjcxOmJmOmZiOjFkOjU0OgogICAgICAgICA2ZDpiNzpkZDpmODo2Mjo2ODo2NjplODo5OTphMTo3YjpiYzpjYzpiNDo0ODoxOTo3ZDo3ODoKICAgICAgICAgYTQ6OGE6NmI6MDU6MzU6YzU6ZTg6YzQ6ZmQ6MDU6ZWQ6ZTE6ZjQ6ZWQ6MmY6NmE6ZDI6MzQ6CiAgICAgICAgIDVhOjcwOjc3OmE4OjUyOjNhOjU4OmZiOjRmOjVlOjI1Ojg4Ojk4OjkzOmU4OjMyOjBkOjkxOgogICAgICAgICBkYjo3Yzo0NjpiNzoxZTplMjpkOTpjZTozODplODphOTphOTpkNjpmNTo0NTpjMTpjZjpiMDoKICAgICAgICAgMGM6MzI6NDA6NjE6Zjc6ZDQ6ZWQ6ODA6Mzk6ODY6NjM6YzU6MGM6ZGM6N2I6MGY6ZGI6MjY6CiAgICAgICAgIDhhOmE3OjEyOmM1OmQ1OjNjOjBhOjMyOmU1OjAyOjI1OmZhOjVlOmY4OjczOjY2OmRjOjQ4OgogICAgICAgICBmMTplMjplNDo1MAotLS0tLUJFR0lOIENFUlRJRklDQVRFLS0tLS0KTUlJRFVUQ0NBam1nQXdJQkFnSUJBakFOQmdrcWhraUc5dzBCQVFzRkFEQWhNUjh3SFFZRFZRUUREQll4TnpJdQpNVGt1TVM0eE1VQXhORGMzTVRVNE9UQXdNQjRYRFRFMk1UQXlNakUzTlRVd01Gb1hEVEkyTVRBeU1ERTNOVFV3Ck1Gb3dFakVRTUE0R0ExVUVBd3dIYldGamFHbHVaVENDQVNJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dFUEFEQ0MKQVFvQ2dnRUJBT0xQbXpKcHJwSlRDc3Z5aTBkYWJPT3Z6NGx2bDVDUjN2cEtXQ240NTk3bzRUS3hNaXZoQThMMQplcUZrSFV4UDJMVTlWd3NHQnY1UGJxZk13YXdhVlBMUDJxOFpmejdJNUYzdEtjWmlVNmZUOG5qdEVSM3VHcjkyClRzRlVXaWZkVmYxRmlpMFFVaEtQa05sTm1la1N0NEFIQitPS2lqVFoxbzFtR3p6TkhLQjlRYnRNdDFSOGlKVEoKU1EzZ3l4a1R4dnJzN3pKMThUdFB4UnlZRHpBeEQvRGFBd3Z6MXR0NjJBYzV1WnFpN2pLM0RuNk44a1AxTU0zQQptQkdzRERWNjVFN0Nmd3RsZ2JhekpLZytiS08xL1EwTUp1WC9DWkdHbVZJMUFCUzEyNkhRc2lTSVAya1BQbmJSCk9hUXAzVUZvbmlGb0dXcERZZGNiaDJXMGQxd1dPOUVDQXdFQUFhT0JvakNCbnpBSkJnTlZIUk1FQWpBQU1CMEcKQTFVZERnUVdCQlRaMFBFUWNzU1h4RnhYeUQyUUh5dktncFpZN0RCUkJnTlZIU01FU2pCSWdCUVFYQS8xdTdadwoxOVdRWURiMXpacnhMT2FzRktFbHBDTXdJVEVmTUIwR0ExVUVBd3dXTVRjeUxqRTVMakV1TVRGQU1UUTNOekUxCk9Ea3dNSUlKQU5KM0RrV3Q4ZUgvTUJNR0ExVWRKUVFNTUFvR0NDc0dBUVVGQndNQ01Bc0dBMVVkRHdRRUF3SUgKZ0RBTkJna3Foa2lHOXcwQkFRc0ZBQU9DQVFFQTBjdytTQ2NrK2s3R2N1MzlZSTduajhYQTdvYzhBQW1ic0xURQo0SUNjVm9SdVVLSEZXRjhsQnRmS0Y5NG1LRnU0QkhiYS9LV1lXQWRQY1lhWEJ5dXVsNmdJUmRDS3dTRXpORGh6CjZBRG5zeFgvKzhSN05VcFJ2TkVzeWtYZEZBQitlYWhGVFB6N3R4T3BtVlcxbys1REMwK3JOWEMyZzlTc2pjTWQKZDdhV0NDSlFCV2s2NXdDNGVPcXZVM0cvK3gxVWJiZmQrR0pvWnVpWm9YdTh6TFJJR1gxNHBJcHJCVFhGNk1UOQpCZTNoOU8wdmF0STBXbkIzcUZJNldQdFBYaVdJbUpQb01nMlIyM3hHdHg3aTJjNDQ2S21wMXZWRndjK3dEREpBCllmZlU3WUE1aG1QRkROeDdEOXNtaXFjU3hkVThDakxsQWlYNlh2aHpadHhJOGVMa1VBPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
  machine-key: "LS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCk1JSUV2UUlCQURBTkJna3Foa2lHOXcwQkFRRUZBQVNDQktjd2dnU2pBZ0VBQW9JQkFRRGl6NXN5YWE2U1V3ckwKOG90SFdtempyOCtKYjVlUWtkNzZTbGdwK09mZTZPRXlzVElyNFFQQzlYcWhaQjFNVDlpMVBWY0xCZ2IrVDI2bgp6TUdzR2xUeXo5cXZHWDgreU9SZDdTbkdZbE9uMC9KNDdSRWQ3aHEvZGs3QlZGb24zVlg5UllvdEVGSVNqNURaClRabnBFcmVBQndmamlvbzAyZGFOWmhzOHpSeWdmVUc3VExkVWZJaVV5VWtONE1zWkU4YjY3Tzh5ZGZFN1Q4VWMKbUE4d01RL3cyZ01MODliYmV0Z0hPYm1hb3U0eXR3NStqZkpEOVRETndKZ1JyQXcxZXVST3duOExaWUcyc3lTbwpQbXlqdGYwTkRDYmwvd21SaHBsU05RQVV0ZHVoMExJa2lEOXBEejUyMFRta0tkMUJhSjRoYUJscVEySFhHNGRsCnRIZGNGanZSQWdNQkFBRUNnZ0VCQUw2QUN1VlQyRmwwUUR3K2NuY3kzd1I2RlVGbEpoTTZRZU5OY0RHSXF4QVIKMzV3Wk1uK2lWZXQ1RFUvaTY2eTkzOUdTUExxNGpFVXJhRkN0N1BsbGdIWVUyS043TWVJRkQ3SklVVzhjQlJHUQpOamNWUHV3NW9lT3dOY094MnF0aS95ZGtNZ05aa3VXZUNkWktsSHdyeVU1U0dYRW5XcCs3VzdhVnpVakxLa0VzCmZvNCtMNHlIUU9IakNIQk40TmQ3YUJEV1lLQ2ZPYmE1dkxKOE11Tld0SnI4Wk95SlR2bXNjTkk5S2JGR2pvYTAKM25ZMVBuS3RBYnRhK3JQcS9xQTlFQTR0akZFdWdOU2RSRkpXdXZQVWY1aUhWSm50QWIvMWRNZFdabU5YS0xreQpWUTdsSlFSWW1NTXhMNnZjejI0a2JLTld4NXpvdVhFM2krbnRpQ0U0bUVFQ2dZRUE5MlZRSVNxM0lLVE5YV1Z0CnZYZWlNU01NcVozKy9saFVGZmQ1SUttT3hwTDViUFUzREkySFJNSktVRlE4cU5ZTmp3bFJ6MDZWelBXNGNsQ28KSjNpMjVTOWpuTHhnekszbTg3QUl5UHNIYWdiMzJqcUlrOUQwWGNNRXN5YnVPNytIQkljV0h6ZmoxSEx2b3lDcQpCbDFMTGtVVDVSTElBZ3I0NjBqRTdRR1B3WGtDZ1lFQTZyTUVRYkZ2SXpRWU5HK1ZWbnVaZG44REpuS291bzZmCkMwb0JudnlJTnYwSThQRDhmNVRGWUkzd0hTSzhpS2I5QjIrWmZoSk9zbFV1RUkrZkFLR2syV1VGbit6ZGgzNW4Kcy9wbEo1QzBqR3ladmhtaXpUZ0hlRUNncGxPWnZYT2g2bDNZa3BwSE1uZTdPK0pzWTM5RHJTWXpCK3lJTFJKeAo5SnJvZ2gwWVR4a0NnWUJZRExIcExBZkRVWVJaOGtpTmYyKzFaMUVSYVU4Zy9SVG9RSXpXeUNJdG9JK3ZiTkxyCjM4ODk5Sng0WEpLK1VIakE2TU02TWpEMG9wdkQ2OXI5T1dSMnkxZjdwN3dYL09qTzRGOHdFTkFCdDNzdEsxb0MKcWdMZkFCTERKRjd6MnVYV0FiSW82RDVwRllNZW52aUVqVjI5bVE1TW9GT1pEb2lyVE5ueHRIV1NtUUtCZ0ZRYwphZmNkSHNaUUFpaXdvS1dJMER2T1V4T3hYZFRXRGh1ZW55d2FOcnIyUGdFVGJIcFFsOWY5cGtMYTB4UnFQQjR4CkdhSTc3MllyN3NGU3Axb3prLyt4RzYzdjFvaWJmWkRidU9yUUNsU1ZDeGc4MmNLUVJPVU16RVl2aWRhQ25WRi8KNW9ETHQ1NVhtSXRpbnhPZFpXU2xYdjZFLzF5ZjBxVWw2eFBPVjRycEFvR0FNRHU2RmZ1OVlxYnJBS2lkRTFWaApYek5zcXNZenBUV0tyYnEwMFVFcmdWanc3WWx2SXhvNkxKekE5cG8rY1Jib2R6cEVJclN6czVVcXVELzRTRWpRCnZQa0FQZW9zcjdFZUMrS21wdVdaYVA0Nzlvclg3LzQyVVdJUnJNeU9ydFpENDJ1M2hIdlI1QmdPTkRIYkNrZ1QKeW93WmEyM1ltalBiWXNieEdWRkp0Qlk9Ci0tLS0tRU5EIFBSSVZBVEUgS0VZLS0tLS0K"
machines:
  "${NODE1_MAC}":
    hostname: "bootstrapper1"
    internal_interface_name: "ens3"
    external_interface_name: "ens4"
    external_ip: "172.21.0.11"
    blacksmith_server: "true"
    state: "unknown"
    _machine: '{"ip":"172.20.0.11","first_seen":0,"type":1}'
    mac: "$NODE1_MAC"
  "${NODE2_MAC}":
    hostname: "bootstrapper2"
    internal_interface_name: "ens3"
    external_interface_name: "ens4"
    external_ip: "172.21.0.12"
    blacksmith_server: "true"
    state: "unknown"
    _machine: '{"ip":"172.20.0.12","first_seen":0,"type":1}'
    mac: "$NODE2_MAC"
  "${NODE3_MAC}":
    hostname: "bootstrapper3"
    internal_interface_name: "ens3"
    external_interface_name: "ens4"
    external_ip: "172.21.0.13"
    blacksmith_server: "true"
    state: "unknown"
    _machine: '{"ip":"172.20.0.13","first_seen":0,"type":1}'
    mac: "$NODE3_MAC"
ssh-keys:
  ali-javadi-pc: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKHS5Iax3lhsPAHCpWoYGa2Jxy+OBBdEoWys4SyNJeHoa/gRtVJ6t/Txr+U3gj64gpmgLiiuhAFmooAfDYEf9DLccgnY7heAb5vaeYKSvjf25+poTFQwmWz0AobNSbIRn09dVaQCwW55avbHAYn9HknuOq1ECYWu24rxhWYzjccmKyMz/MyEeT+pF3Gzp1UuycL1Skz6MJr/FedrqdhCqrDL8/ihHdewUvkOcOnlnQW94yZM+NCRYbvHbZHyebu1eOAUyqgZ+U/83ttTx+BRPzeour/6nne4krYR35tNoomJE0LT6sIJfUVjfcXH9l8WTXXrMKBP992/pM4HOUvNut ali@ali-javadi-pc"
  sina-pc: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCw4PwRHg43ZMkl3P4TNEWC51c07P36TnndOshd83gCeR1piWyWYz3b/25+vE6WDG9bxYrz1/EIbL8Bfv7QjGfM9zgWb94WaYqzLA+twj9soCPBkMt7uKFWnqMiD1AmJSBXnsSEqRV6BWcJJgOlXAcDF4XGi1FLBZzKeJjsGjrODFi4QjD44gLR+SPL0AIOa/KoCbEeb6+BZC8JgCzjCVXSFmvTdLH3Rc/TNrLv03MU187G3VNKM62k9NzCaxOjm85mzdM3VKJNyjTuE3jsIgnLUY0l4TJFndR00hz90OiE6CU8tht8Hyxfj12jUocZD8JcgTyr2o/+/GKvyv9LE8P9 sina@cafesina"
YAML
