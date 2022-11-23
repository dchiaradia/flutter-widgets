import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_widgets/src/widgets/config.dart';
import 'my_input_validator.dart';

enum ValidatorType {
  isPhone,
  isEmail,
  isSearch,
  isCreditCard,
  isCVV,
  isCPF,
  isRG,
  isCEP,
  isDate,
  isCardExpiryDate,
  isNotEmpty,
  noValidate,
  isNullOrEmpty,
}

class MyInput extends StatelessWidget {
  String? hintText;
  TextInputType textInputType;
  TextEditingController controller;
  TextInputFormatter? formatter;
  String? maskText;
  bool? enabled;
  Widget? prefixIcon;
  Widget? sulfixIcon;
  String? errorText;
  bool? Function(String)? validate;
  int minLines;
  int? maxLines;
  Color? backgroundEnableColor;
  Color? backgroundDisableColor;
  Color? textColor;
  Function? onTap;
  Function? onChanged;
  Function? onFieldSubmitted;
  bool? onFocus;
  double myFontSize = inputTextSize;

  TextStyle? textStyle;
  TextStyle? hintStyle;
  InputBorder? borderErrorStyle;
  InputBorder? borderEnableStyle;
  InputBorder? borderDisableStyle;
  InputBorder? borderFocusStyle;

  MyInput({
    super.key,
    this.hintText,
    required this.textInputType,
    required this.controller,
    this.formatter,
    this.enabled,
    this.prefixIcon,
    this.sulfixIcon,
    this.errorText,
    this.validate,
    this.maskText = '',
    required this.minLines,
    this.maxLines,
    this.textColor,
    this.backgroundDisableColor = inputTextDisableColor,
    this.backgroundEnableColor = inputTextEnableColor,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    String? fontFamily = inputTextFontFamily,
    double? fontSize = inputTextSize,
    FontStyle? fontStyle = inputTextFontStyle,
    FontWeight? fontWeight = inputTextFontWeight,
    Color? errorBorderColor = inputTextErrorBorderColor,
    Color? enableBorderColor = inputTextEnableBorderColor,
    Color? disableBorderColor = inputTextDisableBorderColor,
    Color? focusedBorderColor = inputTextFocusBorderColor,
    ValidatorType? validatorType,
  }) {
    switch (validatorType.toString()) {
      case 'ValidatorType.isPhone':
        {
          validate = isPhone;
          errorText = 'Informe um Telefone válido';
          break;
        }
      case 'ValidatorType.isEmail':
        {
          validate = isEmail;
          errorText = 'Informe um E-MAIL válido';
          break;
        }
      case 'ValidatorType.isSearch':
        {
          validate = isSearch;
          errorText = 'Informe um texto válido';
          break;
        }
      case 'ValidatorType.isCreditCard':
        {
          validate = isCreditCard;
          errorText = 'Informe um cartão de credito válido';
          break;
        }
      case 'ValidatorType.isCVV':
        {
          validate = isCVV;
          errorText = 'Informe um codigo CVV válido';
          break;
        }
      case 'ValidatorType.isCPF':
        {
          validate = isCPF;
          errorText = 'Informe um CPF válido';
          break;
        }
      case 'ValidatorType.isRG':
        {
          validate = isRG;
          errorText = 'Informe um RG válido';
          break;
        }
      case 'ValidatorType.isCEP':
        {
          validate = isCEP;
          errorText = 'Informe um CEP válido';
          break;
        }
      case 'ValidatorType.isDate':
        {
          validate = isDate;
          errorText = 'Informe uma data válida';
          break;
        }
      case 'ValidatorType.isCardExpiryDate':
        {
          validate = isCardExpiryDate;
          errorText = 'Informe uma expiração de cartão válida';
          break;
        }
      case 'ValidatorType.isNotEmpty':
        {
          validate = isNotEmpty;
          errorText = 'Informe um conteudo válido';
          break;
        }
      case 'ValidatorType.noValidate':
        {
          validate = noValidate;
          errorText = 'sem validação';
          break;
        }
      case 'ValidatorType.isNullOrEmpty':
        {
          validate = isNullOrEmpty;
          errorText = 'Informe um conteudo válido';
          break;
        }
      default:
        {
          //statements;
        }
    }

    if (validatorType.toString() == 'ValidatorType.isPhone') {}

    formatter = MaskTextInputFormatter(
      mask: maskText,
    );

    hintStyle = TextStyle(
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      fontSize: fontSize,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,
    );

    textStyle = TextStyle(
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      fontSize: fontSize,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,
      color: textColor,
    );

    borderFocusStyle = OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(inputTextRadiusBorder),
      ),
      borderSide: BorderSide(
        color: focusedBorderColor!,
        width: borderSize,
      ),
    );

    borderErrorStyle = OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(inputTextRadiusBorder),
      ),
      borderSide: BorderSide(
        color: errorBorderColor!,
        width: borderSize,
      ),
    );

    borderEnableStyle = OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(inputTextRadiusBorder),
      ),
      borderSide: BorderSide(
        color: enableBorderColor!,
        width: borderSize,
      ),
    );

    borderDisableStyle = OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(inputTextRadiusBorder),
      ),
      borderSide: BorderSide(
        color: disableBorderColor!,
        width: borderSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 92,
        maxWidth: double.infinity,
        minHeight: 50,
        minWidth: double.infinity,
      ),
      child: TextFormField(
        validator: (value) {
          if (validate != null) {
            if (!validate!(value!)!) {
              return errorText;
            } else {
              return null;
            }
          }
        },
        textCapitalization: textInputType == TextInputType.name
            ? TextCapitalization.words
            : TextCapitalization.none,
        enabled: enabled,
        controller: controller,
        minLines: minLines,
        maxLines: maxLines ?? 5,
        inputFormatters: (formatter == null) ? null : [formatter!],
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        style: textStyle,
        autofocus: onFocus ?? false,
        decoration: InputDecoration(
          filled: true,
          fillColor:
              enabled == false ? backgroundDisableColor : backgroundEnableColor,
          focusedErrorBorder: borderErrorStyle,
          errorBorder: borderErrorStyle,
          enabledBorder: borderEnableStyle,
          disabledBorder: borderDisableStyle,
          focusedBorder: borderFocusStyle,
          isDense: true,
          hintText: hintText,
          hintStyle: hintStyle,
          prefixIcon: prefixIcon,
          suffixIcon: sulfixIcon,
        ),
        onTap: onTap as void Function()?,
        onChanged: onChanged as void Function(String)?,
        onFieldSubmitted: onFieldSubmitted as void Function(String)?,
      ),
    );
  }
}
