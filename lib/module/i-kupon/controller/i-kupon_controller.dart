
import 'package:flutter/material.dart';
import 'package:slicing_poinku/core.dart';
import '../view/i-kupon_view.dart';

class IKuponController extends State<IKuponView> {
    static late IKuponController instance;
    late IKuponView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    