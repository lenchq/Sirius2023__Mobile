import 'package:flutter/material.dart';

import '../app_colors.dart';

class PromoInput extends StatelessWidget {
  const PromoInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void showToast(String text) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
          SnackBar(
            content: Center(
                widthFactor: 0.25,
                heightFactor: 0.25,
                child: Text(text)
            ),
          )
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: Text(
                  "ПРОМОКОД",
                  style: TextStyle(
                    color: AppColors.mainLabel,
                    fontSize: 16,
                    fontFamily: "Aeroport",
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Введите промокод",
                    style: TextStyle(
                      color: AppColors.secondLabel,
                      fontFamily: "Aeroport",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.bgInput,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 2, 2, 2),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Промокод",
                          hintStyle: TextStyle(
                            color: AppColors.placeholderLabel,
                          ),
                          border: InputBorder.none,
                        ),
                      )
                  )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const Image(
                                image: AssetImage("assets/button_bg.png"),
                                fit: BoxFit.fill,
                              ).image,
                              alignment: Alignment.center,
                              fit: BoxFit.fill,
                            )
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:[
                              Flexible(
                                child: TextButton(
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(const Size.fromHeight(45))
                                  ),
                                  autofocus: false,
                                  clipBehavior: Clip.antiAlias,
                                  child: const Text(
                                      "АКТИВИРОВАТЬ",
                                      style: TextStyle(
                                        color: AppColors.secondLabel,
                                        fontFamily: "Squartiqa4F",
                                        fontSize: 16,
                                        letterSpacing: 0.05,
                                      )
                                  ),
                                  onPressed: () => showToast("Промокод активирован!"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}