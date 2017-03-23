X-GM-THRID: 6399916000486096896
X-Received: by 10.28.9.203 with SMTP id 194mr156489wmj.21.1490276740385;
        Thu, 23 Mar 2017 06:45:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.135.198 with SMTP id j189ls2353903wmd.3.canary-gmail; Thu,
 23 Mar 2017 06:45:39 -0700 (PDT)
X-Received: by 10.223.145.199 with SMTP id 65mr190941wri.0.1490276739501;
        Thu, 23 Mar 2017 06:45:39 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id e72si1957811wma.0.2017.03.23.06.45.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 06:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id y193so16892783lfd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 06:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=U+2JuNHjkUgHHtE/pqS5+m5Zo3mZ+mtdV2vs7DuJm/4=;
        b=eBTxN2ZMkmh9e/2Yz7npbHN0SmX9KANjzqFm0a6jzZI/8X0J1qNh6/zEsKT+o+kBvO
         c6zhJdWzS/3d6idu66zcMUv9lSLtxJI7yrhgckoB7gKdjDx9um3S9TstLoucrBEUuxmU
         lJWBeIaGvoHq0hDt9aHuGI9s2psvA2IQqHlkcC+4zx33Wz5GA4AUHvMfBuLgGbPeJ+LP
         5I1nq3Yh8cOv7bU+94MckP1FJvE7KyrFp+ObPLRsYmiRMY+O726Vn84PS0mXJtDdVj3K
         Fy9ve8CBb1oSAAQQnZiF1E82qadQEg2SubnkRuROMdsQFPI8rpCmvdy5WNXoK0yLUKFD
         OD4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=U+2JuNHjkUgHHtE/pqS5+m5Zo3mZ+mtdV2vs7DuJm/4=;
        b=R0n6zz+nnaBJukJRfDrYWuzqGx28R4xk/x5XboNoI8euyJmUHBMASYo+nbkwlS06P0
         tvbUV9EGIwdPVcGCl0aD6nvpZROMShGmt9H2RscwMqKXCFbYG784HzFWGmpEIGVuzdaV
         CAaV323Fb262skTuVxeYd3OYqiDG7YiBXqsljqE/BxH14IhDpUiBrjBfm3U3ak3neZyW
         neBcpMR/eQdS4NBDT20tNNW53mUKdrjZJG3MzObhir1SYupjKXieQfD/9sULLd0tT0TK
         jSMxqXeh1x+gGsmrYXior1fTveHf62ZQch3Gysu6wDZYrCOluoiS0kELf25ExUfIhEA7
         8vtA==
X-Gm-Message-State: AFeK/H1L1Ppl+EU3XLCpaOl/qvw8GRBXdZGzT9JnZLcrJ/O0TZVqMebMB+ZWqkPXFtdqAPmvYxoc3Jw3V268iw==
X-Received: by 10.25.115.19 with SMTP id o19mr51041lfc.162.1490276739239; Thu,
 23 Mar 2017 06:45:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Thu, 23 Mar 2017 06:45:38 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Thu, 23 Mar 2017 19:15:38 +0530
Message-ID: <CA+XqjF9fNHFEUopsZH5rfiuha-Pv0WA+8oACvT_cNxwiSX-rjg@mail.gmail.com>
Subject: [RESEND PATCH v2] staging:speakup: Fix alignment with parenthesis.
To: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
	driverdevel <devel@driverdev.osuosl.org>, LKML <linux-kernel@vger.kernel.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113c0ac2a8d5dc054b6617ce

--001a113c0ac2a8d5dc054b6617ce
Content-Type: text/plain; charset=UTF-8

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 - change the commit message.

 drivers/staging/speakup/speakup_apollo.c | 2 +-
 drivers/staging/speakup/speakup_decext.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/speakup_apollo.c
b/drivers/staging/speakup/speakup_apollo.c
index 9cfdbbfb9742..6ad83dc642c4 100644
--- a/drivers/staging/speakup/speakup_apollo.c
+++ b/drivers/staging/speakup/speakup_apollo.c
@@ -173,7 +173,7 @@ static void do_catch_up(struct spk_synth *synth)
                if (!synth->io_ops->synth_out(synth, ch)) {
                        outb(UART_MCR_DTR, speakup_info.port_tts +
UART_MCR);
                        outb(UART_MCR_DTR | UART_MCR_RTS,
-                                       speakup_info.port_tts + UART_MCR);
+                            speakup_info.port_tts + UART_MCR);
                        schedule_timeout(msecs_to_jiffies(full_time_val));
                        continue;
                }
diff --git a/drivers/staging/speakup/speakup_decext.c
b/drivers/staging/speakup/speakup_decext.c
index 929a28d618dc..c564bf8e1531 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -206,11 +206,11 @@ static void do_catch_up(struct spk_synth *synth)
                                if (!in_escape)
                                        synth->io_ops->synth_out(synth,
PROCSPEECH);
                                spin_lock_irqsave(&speakup_info.spinlock,
-                                                       flags);
+                                                 flags);
                                jiffy_delta_val = jiffy_delta->u.n.value;
                                delay_time_val = delay_time->u.n.value;
                                spin_unlock_irqrestore(&
speakup_info.spinlock,
-                                                       flags);
+                                                      flags);
                                schedule_timeout(msecs_to_jiffies
                                                 (delay_time_val));
                                jiff_max = jiffies + jiffy_delta_val;
--
2.11.0

--001a113c0ac2a8d5dc054b6617ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+Rml4IGNoZWNrcGF0Y2ggaXNzdWVzOiAmcXVvdDtDSEVDSzogQWxpZ25t
ZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzJnF1b3Q7Ljxicj48ZGl2IGNsYXNzPSJn
bWFpbF9xdW90ZSI+DQo8YnI+DQpTaWduZWQtb2ZmLWJ5OiBBcnVzaGkgU2luZ2hhbCAmbHQ7PGEg
aHJlZj0ibWFpbHRvOmFydXNoaXNpbmdoYWwxOTk3MTk5N0BnbWFpbC5jb20iPmFydXNoaXNpbmdo
YWwxOTk3MTk5N0BnbWFpbC48d2JyPmNvbTwvYT4mZ3Q7PGJyPg0KLS0tPGJyPg0KY2hhbmdlcyBp
biB2Mjxicj4NCsKgLSBjaGFuZ2UgdGhlIGNvbW1pdCBtZXNzYWdlLjxicj4NCjxicj4NCsKgZHJp
dmVycy9zdGFnaW5nL3NwZWFrdXAvPHdicj5zcGVha3VwX2Fwb2xsby5jIHwgMiArLTxicj4NCsKg
ZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvPHdicj5zcGVha3VwX2RlY2V4dC5jIHwgNCArKy0tPGJy
Pg0KwqAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSk8YnI+
DQo8YnI+DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvPHdicj5zcGVha3Vw
X2Fwb2xsby5jIGIvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvPHdicj5zcGVha3VwX2Fwb2xsby5j
PGJyPg0KaW5kZXggOWNmZGJiZmI5NzQyLi42YWQ4M2RjNjQyYzQgMTAwNjQ0PGJyPg0KLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvPHdicj5zcGVha3VwX2Fwb2xsby5jPGJyPg0KKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAvPHdicj5zcGVha3VwX2Fwb2xsby5jPGJyPg0KQEAgLTE3
Myw3ICsxNzMsNyBAQCBzdGF0aWMgdm9pZCBkb19jYXRjaF91cChzdHJ1Y3Qgc3BrX3N5bnRoICpz
eW50aCk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoIXN5bnRoLSZndDtpb19vcHMt
Jmd0O3N5bnRoX291dCg8d2JyPnN5bnRoLCBjaCkpIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBvdXRiKFVBUlRfTUNSX0RUUiwgc3BlYWt1cF9pbmZvLnBvcnRfdHRz
ICsgVUFSVF9NQ1IpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG91
dGIoVUFSVF9NQ1JfRFRSIHwgVUFSVF9NQ1JfUlRTLDxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNwZWFrdXBfaW5mby5wb3J0
X3R0cyArIFVBUlRfTUNSKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgc3BlYWt1cF9pbmZvLnBvcnRfdHRzICsgVUFSVF9NQ1IpOzxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHNjaGVkdWxlX3RpbWVvdXQobXNlY3NfdG9fPHdi
cj5qaWZmaWVzKGZ1bGxfdGltZV92YWwpKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCBjb250aW51ZTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9zcGVha3VwLzx3YnI+c3BlYWt1cF9kZWNleHQu
YyBiL2RyaXZlcnMvc3RhZ2luZy9zcGVha3VwLzx3YnI+c3BlYWt1cF9kZWNleHQuYzxicj4NCmlu
ZGV4IDkyOWEyOGQ2MThkYy4uYzU2NGJmOGUxNTMxIDEwMDY0NDxicj4NCi0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9zcGVha3VwLzx3YnI+c3BlYWt1cF9kZWNleHQuYzxicj4NCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy9zcGVha3VwLzx3YnI+c3BlYWt1cF9kZWNleHQuYzxicj4NCkBAIC0yMDYsMTEgKzIw
NiwxMSBAQCBzdGF0aWMgdm9pZCBkb19jYXRjaF91cChzdHJ1Y3Qgc3BrX3N5bnRoICpzeW50aCk8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAo
IWluX2VzY2FwZSk8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBzeW50aC0mZ3Q7aW9fb3BzLSZndDtzeW50aF9vdXQoPHdicj5z
eW50aCwgUFJPQ1NQRUVDSCk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgc3Bpbl9sb2NrX2lycXNhdmUoJmFtcDtzcGVha3VwXzx3YnI+aW5mby5z
cGlubG9jayw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmbGFncyk7PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZmxhZ3MpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIGppZmZ5X2RlbHRhX3ZhbCA9IGppZmZ5X2RlbHRhLSZndDt1Lm4u
dmFsdWU7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgZGVsYXlfdGltZV92YWwgPSBkZWxheV90aW1lLSZndDt1Lm4udmFsdWU7PGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmYW1wOzx3YnI+c3BlYWt1cF9pbmZvLnNwaW5sb2NrLDxicj4NCi3CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGZsYWdzKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZmxh
Z3MpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHNjaGVkdWxlX3RpbWVvdXQobXNlY3NfdG9fPHdicj5qaWZmaWVzPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAoZGVsYXlfdGltZV92YWwpKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBqaWZmX21heCA9IGppZmZpZXMgKyBqaWZmeV9kZWx0YV92YWw7
PGJyPg0KPHNwYW4gY2xhc3M9IkhPRW5aYiI+PGZvbnQgY29sb3I9IiM4ODg4ODgiPi0tPGJyPg0K
Mi4xMS4wPGJyPg0KPGJyPg0KPC9mb250Pjwvc3Bhbj48L2Rpdj48YnI+PC9kaXY+DQo=
--001a113c0ac2a8d5dc054b6617ce--

