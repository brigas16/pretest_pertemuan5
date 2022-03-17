import 'package:flutter/material.dart';
import 'package:pretest/ui/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text('Track parcel',
                style: Theme.of(context).textTheme.headline1),
          ),
          centerTitle: false,
          floating: true,
          snap: false,
          pinned: true,
          titleSpacing: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBEUEBERERQQERETEBEZERARERAQERERFxgYGBgXFxcaIC0jGhwoIBcXJDUkKC0vMjIyGSI4PTgwPCwxMi8BCwsLDw4PHBERHDQoIikxMTMyMTEzMTExMzExMTExMTExMTExLzMzMTExMTExMTExLy8xMTExMTExMTMxMTExMf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwQCBQYHAf/EAEMQAAICAAIGBgUICQMFAAAAAAABAgMEEQUSITFBUQYTYXGBkSJSobHBBxQyQnKy0eFDU2KCkqLC8PEjM3MWJDRjw//EABoBAQADAQEBAAAAAAAAAAAAAAACAwQFAQb/xAAwEQACAQIEAwYGAwEBAAAAAAAAAQIDEQQSITFBUfATYXGhsdEFFCIygZHB4fEzI//aAAwDAQACEQMRAD8A9mAAAAAAAAAAAAAAAAAAAKtuNpj9OyqH2pwj72HpuLX2LQKcdI4d7FdS3yVsH8S1GSazTTXNPNBNPY9aa3MgADwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGp01pmvDQzfpWSz1K08m+18l2kZzjCLlJ6I9jFydluXMXjK6oOdk1CK4ve3yS3t9iOT0l0xm844eKgv1k1rS71HcvHPuNHbZfi7HOb1nz3RrXKK4e9m0wujq69rWtL1pfBcDj1cdVqO1L6Vz4/1+P2dGGGhD79X5Gstsxd+2crJp+tJxj4R2LyRjHRNn7C8X8Eb5zXDaRub5Iwygm7yd2aFNrRaGmlomznB/xfgYRw+IretDWi/Wrm0/ZtN05y7DB2815EMkU7rQlmZHgelWJreVmVsVvU1qyXdJL3pnW6L01TiFlCWrPLbXLZJdq9ZdqORtphYtqT7d0ka3EYSdbU4N5J5qUW1KD57PejXSxtalv9S7/f3uUVMPTntoz1UHKdG+kfWONN7SseyuexKx+q+Uvf37+rO3RrQqxzQ26689jm1KcoSyyAALSAAAAAAAAAAAAAAAAAAAAAAAABT0ljYUVTtnuitkeMpPdFd55w3birpSm9snnJ8IR4RiuXBf5Nr0y0g53qmL9Crel9axrb5JpeZngcOq60uO+T5v8AvYcPGVnWq9mvtj69bHTw9Ps4ZnuyWquNcVGKyS3Ln2s+5N7z4trzJowKUrlj0MFA+OBaUD5Ksm6ZHMUpRIZQLs4FecSmcScZFOSy3GVdmex7/eZTRWkjO7xehclcq4/Cavpx+jxXqvs7Dsui2mOurddjztgt73zhuT71ufg+Jz1clKLT28GuaNdRdPDYiM45+jLPL14vevFZo04av2M1Jfa9+u4prUu1jl4rY9UBFTbGcIzi84yinF801mmSn0hxwAAAAAAAAAAAAAAAAAAAAAQ4m5QrnZLdCMpPuSb+BMafpRZq4K5rioLwlKKfsbIVJ5IOXJN/olCOaSXM4TR6dmI157XnKUnzk3n72byb3I1WhI/Tf2V7zZN+kz5qnpE7EvuJ60WYIrVss1s1UymRYjA+TiITPkpF+lirW5XmitYizYytYzNMuiVbStYWbGVrDHUNET5VLKS9pHpav0Yy5PJ9z/v2n0nxazpl9nPy2kYaxaPZb3Ok6HYrXwuo99c5R/dfpR+9l4HQnFdArfSvhzjW/JyXxR2p9Jgp56EW/D9OxyMTHLVl1vqAAaigAAAAAAAAAAAAAAAAAAGi6YL/ALK3sdf30b01mn6NfCXx3vq3JLtj6S+6VV4uVKcVxT9GWUnapFvmvU4fQr9Gf2l7i836T7zV6HnlKUeaT8v8mxsfpd581F/SjsNalmEieMylCZLGZdCRW4l1WHyVhXUz47C3tCGUknMrzkJTIZzKZyLIxMJyK82STkRMyzepdFHwsXf7Mv8AjfuIEiTSEsqpduSX99whxZ5LgXugi/1rn/617ZL8DuTkOgdPo32cHKEV3xTk/vROvPo8BFrDxv3+rOTineq/wAAbDOAAAAAAAAAAAAAAAAAADFrNZPanvRkADyzEUvD4mcHuhNrvg9z8mmbK3as1w9xsemejtZK+K2xWrPLjHPZLwb9vYaPRuJzWo96+j2x/I+axFHsqjhweq8P62OxSqdpBS48evP8AJPGZJGwhtry2rd7jFTM2ZrcutctqYcyr1g6wl2h5lJ5TIpSI3M+NkHO5JRDZ8B9jBt5IhuSJMPDN58veU9K25tQ9Xa+9/l7y/dYq4Z+S5sh6O4B4jEJz21walY3uk89i8X7EzRCm5NU47sqlJRTm9kdr0cwfVYWuLWUpLWnz1pbcn2pZLwNqAfUQgoRUVsjiyk5NtgAEiIAAAAAAAAAAAAAAAAAANdpfStOFqldfNQitiW+U5cIwjxk/z3Ix05parCUSvueSWyMV9Oyb3QiuLeXgk29iZ4tpbSmI0hiOsse7NV1pvq6a3wXN7s3vbXJJK+jQdTV7FVSqoeJY6TdKMTjp6sdaqhSzrog9ry2qc5L6UuPJe13cFfLVjrNK2KWbjub5oq10V1Q98vrSf98DXvEydsHuSmti5Z7cyWNwFPE0sq0a2fL+nx/ZHDYuVGeZ6p7rrivdcTuMJi1NasslLlwl3fgSWUer5HPwt4PY+fA2OH0hKOyfpLn9b8z4+vRnRlkrKz9fB8er2PoaVWNSOam79cevC61LLR8JoYqqXFd0tnvJOqi93sZR2fJlmYqgtdTHl7WfJW1w3uK9r/Edm+IzLgRV1N9iJbJwrjm/LjJlO/SS3QWf7Ut3ka265t5yblL+/Isp05Tlkpq766u9ObIzkorNN2RnjcU5ZzluS9GK9y7Sv0X6a2Ya2Ub4a2HnPOUYxStpexay9ZZJZp+GW51MdfquGe557uCWX4kWKwEbI60clPLZLhLsZ9X8O+GRoRbqayfl3L+X+tFrwcXjXVdoaRXn4+387e3YTFV21xtqlGdclnCcXmmiweHdFOk12AucJqUsPKX+rTxi/wBZDlL2SXg17ThMVXbXC2qSnXOKcJLc0yytRdN9xGnUU0WAAVFgAAAAAAAAAAAAAAAIcRfCuE7JtRhCLlOctijFLNt+BMeafKnp7LUwFb3qM8Q1y3wg/LWfdHmTp03OSiiM5ZY3OU6S6ct0his1mqotxoqf1IcZy/aeSb5bFty2zV1wpryXi+M5EOisKq69eWyUlm8/qx3pfH/BXxNznLPgty7DqqK+1bI57lxe5jda5vN+C4JEM4mYLLELm4r9OuMua2962P2kF+IdcXLPNLdF8XwR80Tck3W90n6P2uXiQab/ANxQ4RWfi/yyM1SjGpeE1dcnqXQqyg7xdmb/AAFHXUwug16S9KLz9Ga2SWff7MjN4K1cPaip0DxOVtmHlusWvX9uK9JeMdv7h20sIcHEfCqCm0k14P3udaljqrjfc5P5na/qvxkvxJq9Fze9xijplhDWdKbOpwVslslNKuHB5z2PLtUdZ+BXT+FULpav8+yXqTnjqlr6LrvucTTpPXslBbFrPq5LfOK3Z8nltL9VRzlUWmmtjTTXejp7sRGFKs4yitRc21n7D6ClhqdFZacUl3da/k49SvOo7zdzUaRnna1wglHx4+1+wxwuIcHzi96+KIGwaktLFFy/j8JG2ClHLXS9GXNcmXugfSd4S35vc2sNZPJ636C17Nfsi90uW/g89ZgsRqvVf0X7GRaawn6WK7Jr3P4EJQUlllsWRk19SPfgcP8AJt0gd+HeGted2HS1W986N0X2uP0X+7xZ3ByZwcJOLN8ZKSugACJIAAAAAAAAAAAAgxWIjXXZbN5QhCUpvlGKbb8keB9dPF4uy63fOyVk1vyWeyHclqx7kerfKVjeq0bZFPKV1lda7m9aS8YwkvE8x0FX6M585JLuX+fYbsJG0XIy13eSiWNIW5JQXHa+7+/ca8lxM9acn25LuWwiNqVkZGAAengM7puctaW1tLN88ll8DAAE2j8S6b6r4767IyyXGKfpLxWa8T2iNcZJSi04ySaa4p7UzxE9V6GY7rMDTm/Srzql2an0f5HAxYyGikvA1YaWribtUHB/KRiF1lGHT+jGVk12yerD2Rn5nfa55H0qxfW46+WeajPUj2KtamzxTfiU4SN6l+RbiJWhbmahIkstlLVzeajFKK4JIwB0zAAAADZ4WxTg4y25LKSfFM1hPgp6s1yex+O72nkldHqdmY6Hx8sFjq7durXPKxevTLZJZcXqvPvSPe4STSaaaaTTW1NPczwTTtX0LP3X718T1b5PNIddo2nN5yp1qpdnV/R/kcDFi4XSn+DXh5auJ1AAMJqAAAAAAAAAABjJ5IA87+V27/RwlfO22X8EVH/6HJaLWWHi+yT9rOm+VmOccJLhGd6/iVb/AKGczo3bRHukva0dKh/yX59TFV+9mvDYMJvbkajMfY8zIIAAAAA7H5PsXlK+lveo2RXavRl74eRxxtui2I6vGUvhNyg/3k8v5tUqrxzU5IspO00z07E4pV1zse6uEpPuim/geOOTbbe1ttt829rZ6N0qxWpg7st89WC/eks/5dY84KMHG0W+tP8AS3EvVLrrQAA2GYAAAxz2mSZhbuz5CEsxc9NnpOOth5PsjJea+GZ1HyRYrZjKXuUqbF3yU4y+5E5m7/x5f8T+6bb5KZZYjEcuoh9//Jmrr/ykX0vvR62DCuWaMzmG4AAAAAAAAAEVz2EpFctgBwvylYXrMDrrPOq6uez1XnW/vp+Bwmg7M4ShxjLPwf5pnr2k8NGyqyqe2FkJRlzykstnaeLQjPDYmddmxwm4WcmuEl2bpLsZvwkrwceRlrq0lIlxMNWUlwzzXc9xBBGy0nVmk1vW/tiUIo2J3MrVj6AD0iAAADKmxwnCa3wlGS74tP4GIAOw6bXrqqIJ7JzlPvUY5f1nHm103iteOFW/VwsM3+1m4y+4jVFOHjlppePqy2tK82wAC4qAAAPk45prmirVMtkGHq9NvhF7O18CE3bUnFX0NtjpauHl9lR88kb75K6XrYq3hlTBPt9OUv6fM47SOJzSr4J5y78th6j0G0c6cFWpLKdjds1uac8tVPtUVHxzM+Ilalbn/v8ABfRV5+B19LJyClE5zjYAAAAAAAAADGSzRkAChfA8+6f9H3ZH51VHOyuOV0VvnWt0kuLj7u49LsrzKF9JOnNwlmRGcVJWZ4novGp6tc3u2Qk9zXJlzEYLjD+Hd5G86UdC25SuwiWbzc6NkU3xdb3L7L2cuRyVWkLqm67ItuOxwsTjZHs27V4nTpzU1eP6MM4OLtIklFremu9ZGJdr0tS/pa0e+Oa9mZJ85w7+tV4pL3lmbuK8prgbLrMP61XnAdZh/Wp84DN3DKa0Gy6yj1qvOA63D86vOAzdwymucns7FkuxZt/Fnw2XW4fnV5wHW4fnT/IM3cMprQbLrcPzq/kHW4fnT/IM3cMprTKMW9yb7lmX/nOHX1qvDL4GE9K0rc5S7Ixa9+QzdwymNOBb2z2Lkt/5FfSFsa5NRyz2ZLlsW8ixGl5y2QSgue+X5G30B0PvvkrMRr00t5vW2XWdyf0e9+TITaSvN6E4Jt2iRdD9AyxV3WWLOiuSdje6ye9Vrnwb7NnFHsFECto7AV11wqqioVwWUYrcvxfHPibWqvI5taq6kr8DbTgoKxnCOSMwCosAAAAAAAAAAAABHOtMkABQuw5p9KaFouWV1cLMtzaylH7MltXgzpmiKdKYTs7oNXPNMZ0Cw7bdc7q/2W42RXms/aauzoJYt18H31Sj/Uz1azClWeFLliKq4+nsVujDkeVy6F3L9JV/DMjfQ+79ZX5TPUJ4Qhng+wl81U5+R52EOR5m+iVv6yvykfP+lLvXr8pHpMsH2GDwfYPmqvPyHYQ5HnP/AEpd69flI+rolb+sr8pHovzPsM44PsHzVTn5DsIcjzpdD7vXr8pmUehlz/SVeUz0aOD7CeOEHzVTn5DsIcjziHQW577q13QlL4o2WE6AV7Otttn2VxjUn56x3sMKWq8KePE1Xx9AqMORz2iujeGoadVUVNfpJZzs8JSza8Mjf04ctQoSJUsiltt3ZYklsYV1JEoB4egAAAAAAAAAAAAAAAAAAAAAxyRkACPqkRvDIsAAqvCox+aFwAFP5oZLCotAArrDIzVKJQAYqKMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//2Q=='),
                ),
              ),
            ),
          ],
          shadowColor: Colors.transparent,
          expandedHeight: 426,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter parcel number or scan QR code',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 7, bottom: 40),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.all(14),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: SvgPicture.asset(
                                    'assets/images/icon_qrcode.svg'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Track parcel',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            style: Theme.of(context).textButtonTheme.style,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
            top: 32,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My parcels',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  height: 174,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).backgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '00359007738060313786',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/1000px-Amazon_logo.svg.png',
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'In transit',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'Last update: 3 hours ago',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.5),
                              child: LinearProgressIndicator(
                                value: 0.7,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .backgroundColor,
                                backgroundColor: Color(0xFFFF8F8F8),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 60,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Details',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SvgPicture.asset(
                                  'assets/images/icon_details.svg',
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
