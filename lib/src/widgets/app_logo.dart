import 'package:animated_text_kit/animated_text_kit.dart';

import '../../exports.dart';
import '../../gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Assets.images.kFALogo.image(
          width: 55,
          height: 55,
        ),
        DefaultTextStyle(
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                'MOBILE  ',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(color: Colors.white),
              ),
            ],
            pause: const Duration(milliseconds: 300),
            isRepeatingAnimation: true,
            repeatForever: true,
            onTap: () {},
          ),
        ),
        DefaultTextStyle(
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                '',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.yellow,
                      offset: Offset(1.5, 1.5),
                    ),
                  ],
                ),
              ),
            ],
            pause: const Duration(milliseconds: 300),
            isRepeatingAnimation: true,
            repeatForever: true,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
