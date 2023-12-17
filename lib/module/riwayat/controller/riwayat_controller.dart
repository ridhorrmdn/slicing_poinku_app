
import 'package:flutter/material.dart';
import 'package:slicing_poinku/core.dart';
import '../view/riwayat_view.dart';

class RiwayatController extends State<RiwayatView> {
    static late RiwayatController instance;
    late RiwayatView view;

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
        
    