X-GM-THRID: 7022901752311578624
X-Received: by 2002:a17:90b:4f4b:: with SMTP id pj11mr29319134pjb.4.1635256319576;
        Tue, 26 Oct 2021 06:51:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ec91:: with SMTP id x17ls192555plg.5.gmail; Tue, 26
 Oct 2021 06:51:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy0RjESVE6pszoplvM/GQ1rzL/KKrQgSOxN1hXkmOxggr2s1FlwZDPmHwQzhe/lnDSgnDBn
X-Received: by 2002:a17:903:189:b0:140:5f35:437 with SMTP id z9-20020a170903018900b001405f350437mr9251891plg.56.1635256318265;
        Tue, 26 Oct 2021 06:51:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635256318; cv=none;
        d=google.com; s=arc-20160816;
        b=YcVS67fbyt8EQOCoK6T/Gt8hFDcfKI05zwUjcWHFWQ0QNxHn1Esd7AqMo4Bs/q9rWW
         cIA/VIZVCVaWG7WSYjEx6Be6H54A9Fz5/QG0fwWV3+ejjuRQveIIgSO0yYd2ej0rm6K+
         0Z4jZvppSV0MdtbS2Sl5PGKLAdoRMKATrL/NBYeV8oqPq1svbJ7qGQCvfhzSRV7/6vsa
         RlAltLAO2l6SnUYn5kDuTAyUsrH36U/CWBjA054T+ocJz+6ECIbTb+XpFKXhz8HSwcA2
         Vdg3UMr4JwIQB9OgWfD238Ylk3uXezwFnw6PnfQX9SWXvGDGZj+7cP9Obyj4tjcKi7Qp
         yVOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=enWI9Wjpe0C+GpNv82mMJ6KXKdTCwAPWCPIdB+eiS9Y=;
        b=CddxC2qUibBhmI8GCKF755aC8l6QmDTC+YX6cwLsi2nD8iqIYpnHx8OA6ySH2SA3MA
         1xdy6TuQLKQOnJP865wu+wiqr4oVfZh24FCu1Q7am0IHNDWYOudkj9/5Cf+qZeRjbiLI
         HYgfLbZAsAs/reH/nGZ9nqZf7/AwDhC2VsQI/tejBmRG6yjE4aSOmCHiAdVPBH+UoIyP
         S0YnMUPh2yxPON0iiBnuy0WO/9qpRV0BMH6368UeVx2BbejCxbnB/YT0n8/YfjDgAuco
         jR1lCWIY4Gdo7oSmyNtjF3OWuiZ1trT1uFK8d3J1b8hV89wUBpb6RHwmc5gz1gauSvqP
         MZ7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EKe7kF0p;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com. [2607:f8b0:4864:20::f31])
        by gmr-mx.google.com with ESMTPS id m1si250398pjv.1.2021.10.26.06.51.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 06:51:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) client-ip=2607:f8b0:4864:20::f31;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=EKe7kF0p;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf31.google.com with SMTP id d6so9553704qvb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 06:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=enWI9Wjpe0C+GpNv82mMJ6KXKdTCwAPWCPIdB+eiS9Y=;
        b=EKe7kF0pBYseP9oZD9mKNIRLtwukUGMBt8NtThRd9R975RRHSFGatwGe3KQdfbgLWS
         k6VK0Bg60G2ow7QNCkB2HHbWFzyaOskBlpauZVFefXBvf2gH/d+GM+luz+PG4CpVYAxO
         A1q45TbnNGJCdgisGT6oEvUVfHactcx34LRnRLnIThuYv4rHMAgMR+zwQibBE94WpKaa
         doHpXBbQsW/0fADcnOQOIiZs5dhvlrXFItxe3fNNSnTepq3pwWQ6ob+23TUiqyuy0hqi
         JKqkPnHfttUj4iTeTfOdcdeJAi0r0vdyQ4xVIfoUC+240rqsgJ9owZhHU7Zxj6U1R23C
         0m4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=enWI9Wjpe0C+GpNv82mMJ6KXKdTCwAPWCPIdB+eiS9Y=;
        b=KECx9bXR/j/Na1uQxfsG1eo1SfVVK8OtMhbY8axeF602DjGs+/KLpKyU52YTzBQct2
         R4sGeHc4XuvfJ6r9PeVQDkD6xOeSRAjjCfEJGS5wKHp5LTCwHMlLDZthbiS5Xb0Ohyy1
         MyMCthkhfKRLJaNfHLyGQJ0oSw+7GvfhlSH9wM2vz9/0c0aPxbZWRSOzg64ivemF+aRI
         s9L23pV2a3NI3waFWps2nwotqO1SlFy/G1bVzoP9+xKuhDgqIRCEz3HHDo7JUQ18YsmJ
         pvYBFzOEGAvLK061q9NgYeG7CnJKw5XU+sfi565zR9mmvMR7rF1vbCKDpffyvXc4f/9D
         vEqw==
X-Gm-Message-State: AOAM5334+fTFmrMW4ohUNVk2gjDzMk8OAQ34gIZXghkHnCnHexjfjWLw
	kQv+hSZT2XOQ+/+YiGcGqv5rliTwAyxHTSgm2tuZunb3pM9aVzdB
X-Received: by 2002:ad4:4144:: with SMTP id z4mr22204622qvp.22.1635256317398;
 Tue, 26 Oct 2021 06:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <20211025072528.152028-1-kushalkothari285@gmail.com> <4715e602-bdc0-e0d9-ff99-8eb08c8c5063@gmail.com>
In-Reply-To: <4715e602-bdc0-e0d9-ff99-8eb08c8c5063@gmail.com>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Tue, 26 Oct 2021 19:21:45 +0530
Message-ID: <CALtHPQui3a4N1D2JHQaJeMiZ8TA7SR4XR1eNf9bLYu2M0FVW_Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Refactor
 nested if-else
To: Praveen Kumar <kpraveen.lkml@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, fabioaiuto83@gmail.com, 
	ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com, 
	"Fabio M. De Francesco" <fmdefrancesco@gmail.com>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	Mike Rapoport <mike.rapoport@gmail.com>, kushalkothari2850@gmail.com
Content-Type: multipart/alternative; boundary="000000000000ea52d205cf41c712"

--000000000000ea52d205cf41c712
Content-Type: text/plain; charset="UTF-8"

>there is a bug here, if *p* is not null, and *memcmp* failed; then we fall
in else part and break, and will miss the next entry in *p* using below
>statement

>p = p + ie_len + 2;

Yes! I missed this :( Thank you so much for pointing this out. I have fixed
this in v2. Can you please have a look ?









On Mon, Oct 25, 2021 at 2:43 PM Praveen Kumar <kpraveen.lkml@gmail.com>
wrote:

> On 25-10-2021 12:55, Kushal Kothari wrote:
> > Refactor nested if else by combining nested if into a single if
> condition and removing unnecessary else conditionals which leads to
> removing unnecessary tabs .There is no change in logic of new code.
> > checkpatch warning : Too many leading tabs - consider code refactoring
> >
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----------
> >  1 file changed, 26 insertions(+), 39 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > index 0f82f5031c43..eb10b6f85426 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > @@ -1192,46 +1192,33 @@ unsigned int OnAssocReq(struct adapter
> *padapter, union recv_frame *precv_frame)
> >               p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
> >               for (;;) {
> >                       p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC,
> &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
> > -                     if (p) {
> > -                             if (!memcmp(p+2, WMM_IE, 6)) {
> > -
> > -                                     pstat->flags |= WLAN_STA_WME;
> > -
> > -                                     pstat->qos_option = 1;
> > -                                     pstat->qos_info = *(p+8);
> > -
> > -                                     pstat->max_sp_len =
> (pstat->qos_info>>5)&0x3;
> > -
> > -                                     if ((pstat->qos_info&0xf) != 0xf)
> > -                                             pstat->has_legacy_ac =
> true;
> > -                                     else
> > -                                             pstat->has_legacy_ac =
> false;
> > -
> > -                                     if (pstat->qos_info&0xf) {
> > -                                             if (pstat->qos_info&BIT(0))
> > -                                                     pstat->uapsd_vo =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_vo =
> 0;
> > -
> > -                                             if (pstat->qos_info&BIT(1))
> > -                                                     pstat->uapsd_vi =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_vi =
> 0;
> > -
> > -                                             if (pstat->qos_info&BIT(2))
> > -                                                     pstat->uapsd_bk =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_bk =
> 0;
> > -
> > -                                             if (pstat->qos_info&BIT(3))
> > -                                                     pstat->uapsd_be =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_be =
> 0;
> > -
> > -                                     }
> > -
> > -                                     break;
> > +                     if (p && !memcmp(p+2, WMM_IE, 6)) {
> > +                             pstat->flags |= WLAN_STA_WME;
> > +                             pstat->qos_option = 1;
> > +                             pstat->qos_info = *(p+8);
> > +                             pstat->max_sp_len =
> (pstat->qos_info>>5)&0x3;
> > +                             pstat->has_legacy_ac = false;
> > +                             if ((pstat->qos_info&0xf) != 0xf)
> > +                                     pstat->has_legacy_ac = true;
> > +
> > +                             pstat->uapsd_vo = 0;
> > +                             if (pstat->qos_info&0xf) {
> > +                                     if (pstat->qos_info&BIT(0))
> > +                                             pstat->uapsd_vo =
> BIT(0)|BIT(1);
> > +
> > +                                     pstat->uapsd_vi = 0;
> > +                                     if (pstat->qos_info&BIT(1))
> > +                                             pstat->uapsd_vi =
> BIT(0)|BIT(1);
> > +
> > +                                     pstat->uapsd_bk = 0;
> > +                                     if (pstat->qos_info&BIT(2))
> > +                                             pstat->uapsd_bk =
> BIT(0)|BIT(1);
> > +
> > +                                     pstat->uapsd_be = 0;
> > +                                     if (pstat->qos_info&BIT(3))
> > +                                             pstat->uapsd_be =
> BIT(0)|BIT(1);
> >                               }
> > +                             break;
> >                       } else {
> >                               break;
> >                       }
>
> there is a bug here, if *p* is not null, and *memcmp* failed; then we fall
> in else part and break, and will miss the next entry in *p* using below
> statement
>
> p = p + ie_len + 2;
>
>
> >
>
> Regards,
>
> ~Praveen.
>
>

--000000000000ea52d205cf41c712
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj4mZ3Q7dGhlcmUgaXMgYSBidWcgaGVyZSwgaWYgKnAqIGlzIG5v
dCBudWxsLCBhbmQgKm1lbWNtcCogZmFpbGVkOyB0aGVuIHdlIA0KZmFsbCBpbiBlbHNlIHBhcnQg
YW5kIGJyZWFrLCBhbmQgd2lsbCBtaXNzIHRoZSBuZXh0IGVudHJ5IGluICpwKiB1c2luZyANCmJl
bG93ICZndDtzdGF0ZW1lbnQ8YnI+DQo8YnI+DQomZ3Q7cCA9IHAgKyBpZV9sZW4gKyAyOzwvZGl2
PjxkaXY+PGJyPjwvZGl2PlllcyEgSSBtaXNzZWQgdGhpcyA6KCBUaGFuayB5b3Ugc28gbXVjaCBm
b3IgcG9pbnRpbmcgdGhpcyBvdXQuIEkgaGF2ZSBmaXhlZCB0aGlzIGluIHYyLiBDYW4geW91IHBs
ZWFzZSBoYXZlIGEgbG9vayA/PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48
YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3Rl
Ij48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gTW9uLCBPY3QgMjUsIDIwMjEg
YXQgMjo0MyBQTSBQcmF2ZWVuIEt1bWFyICZsdDs8YSBocmVmPSJtYWlsdG86a3ByYXZlZW4ubGtt
bEBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5rcHJhdmVlbi5sa21sQGdtYWlsLmNvbTwvYT4m
Z3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxl
PSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQs
MjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+T24gMjUtMTAtMjAyMSAxMjo1NSwgS3VzaGFsIEtv
dGhhcmkgd3JvdGU6PGJyPg0KJmd0OyBSZWZhY3RvciBuZXN0ZWQgaWYgZWxzZSBieSBjb21iaW5p
bmcgbmVzdGVkIGlmIGludG8gYSBzaW5nbGUgaWYgY29uZGl0aW9uIGFuZCByZW1vdmluZyB1bm5l
Y2Vzc2FyeSBlbHNlIGNvbmRpdGlvbmFscyB3aGljaCBsZWFkcyB0byByZW1vdmluZyB1bm5lY2Vz
c2FyeSB0YWJzIC5UaGVyZSBpcyBubyBjaGFuZ2UgaW4gbG9naWMgb2YgbmV3IGNvZGUuPGJyPg0K
Jmd0OyBjaGVja3BhdGNoIHdhcm5pbmcgOiBUb28gbWFueSBsZWFkaW5nIHRhYnMgLSBjb25zaWRl
ciBjb2RlIHJlZmFjdG9yaW5nPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IFNpZ25lZC1vZmYtYnk6IEt1
c2hhbCBLb3RoYXJpICZsdDs8YSBocmVmPSJtYWlsdG86a3VzaGFsa290aGFyaTI4NUBnbWFpbC5j
b20iIHRhcmdldD0iX2JsYW5rIj5rdXNoYWxrb3RoYXJpMjg1QGdtYWlsLmNvbTwvYT4mZ3Q7PGJy
Pg0KJmd0OyAtLS08YnI+DQomZ3Q7wqAgZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0
d19tbG1lX2V4dC5jIHwgNjUgKysrKysrKystLS0tLS0tLS0tLTxicj4NCiZndDvCoCAxIGZpbGUg
Y2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pPGJyPg0KJmd0OyA8YnI+
DQomZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21s
bWVfZXh0LmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVfZXh0LmM8
YnI+DQomZ3Q7IGluZGV4IDBmODJmNTAzMWM0My4uZWIxMGI2Zjg1NDI2IDEwMDY0NDxicj4NCiZn
dDsgLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1lX2V4dC5jPGJy
Pg0KJmd0OyArKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVfZXh0
LmM8YnI+DQomZ3Q7IEBAIC0xMTkyLDQ2ICsxMTkyLDMzIEBAIHVuc2lnbmVkIGludCBPbkFzc29j
UmVxKHN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciwgdW5pb24gcmVjdl9mcmFtZSAqcHJlY3ZfZnJh
bWUpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcCA9IHBmcmFtZSArIFdMQU5fSERS
X0EzX0xFTiArIGllX29mZnNldDsgaWVfbGVuID0gMDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBmb3IgKDs7KSB7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcCA9IHJ0d19nZXRfaWUocCwgV0xBTl9FSURfVkVORE9SX1NQRUNJRklDLCAmYW1wO2ll
X2xlbiwgcGt0X2xlbiAtIFdMQU5fSERSX0EzX0xFTiAtIGllX29mZnNldCk7PGJyPg0KJmd0OyAt
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocCkgezxicj4NCiZndDsgLcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKCFtZW1jbXAocCsyLCBX
TU1fSUUsIDYpKSB7PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7ZmxhZ3MgfD0gV0xB
Tl9TVEFfV01FOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3Fvc19vcHRpb24gPSAx
Ozxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgcHN0YXQtJmd0O3Fvc19pbmZvID0gKihwKzgpOzxicj4NCiZndDsgLTxicj4N
CiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcHN0YXQtJmd0O21heF9zcF9sZW4gPSAocHN0YXQtJmd0O3Fvc19pbmZvJmd0OyZndDs1
KSZhbXA7MHgzOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKChwc3RhdC0mZ3Q7cW9zX2luZm8m
YW1wOzB4ZikgIT0gMHhmKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O2hhc19sZWdh
Y3lfYWMgPSB0cnVlOzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZWxzZTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQt
Jmd0O2hhc19sZWdhY3lfYWMgPSBmYWxzZTs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3Rh
dC0mZ3Q7cW9zX2luZm8mYW1wOzB4Zikgezxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0
LSZndDtxb3NfaW5mbyZhbXA7QklUKDApKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcHN0YXQtJmd0O3VhcHNkX3ZvID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7IC3CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGVsc2U8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBz
ZF92byA9IDA7PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocHN0YXQtJmd0
O3Fvc19pbmZvJmFtcDtCSVQoMSkpPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBw
c3RhdC0mZ3Q7dWFwc2RfdmkgPSBCSVQoMCl8QklUKDEpOzxicj4NCiZndDsgLcKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZWxzZTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3VhcHNkX3Zp
ID0gMDs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7cW9z
X2luZm8mYW1wO0JJVCgyKSk8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0
LSZndDt1YXBzZF9iayA9IEJJVCgwKXxCSVQoMSk7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBlbHNl
PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2RfYmsgPSAw
Ozxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0LSZndDtxb3NfaW5m
byZhbXA7QklUKDMpKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0
O3VhcHNkX2JlID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVsc2U8YnI+
DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF9iZSA9IDA7PGJy
Pg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBicmVhazs8YnI+DQom
Z3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwICZhbXA7JmFtcDsgIW1l
bWNtcChwKzIsIFdNTV9JRSwgNikpIHs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDtmbGFncyB8PSBXTEFOX1NUQV9XTUU7PGJy
Pg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3Rh
dC0mZ3Q7cW9zX29wdGlvbiA9IDE7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7cW9zX2luZm8gPSAqKHArOCk7PGJyPg0KJmd0
OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7
bWF4X3NwX2xlbiA9IChwc3RhdC0mZ3Q7cW9zX2luZm8mZ3Q7Jmd0OzUpJmFtcDsweDM7PGJyPg0K
Jmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0m
Z3Q7aGFzX2xlZ2FjeV9hYyA9IGZhbHNlOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKChwc3RhdC0mZ3Q7cW9zX2luZm8mYW1wOzB4Zikg
IT0gMHhmKTxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O2hhc19sZWdhY3lfYWMgPSB0cnVlOzxicj4NCiZn
dDsgKzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcHN0YXQtJmd0O3VhcHNkX3ZvID0gMDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7cW9zX2luZm8mYW1wOzB4Zikg
ezxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgaWYgKHBzdGF0LSZndDtxb3NfaW5mbyZhbXA7QklUKDApKTxicj4NCiZndDsg
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgcHN0YXQtJmd0O3VhcHNkX3ZvID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7
ICs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF92aSA9IDA7PGJyPg0KJmd0OyArwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocHN0YXQt
Jmd0O3Fvc19pbmZvJmFtcDtCSVQoMSkpPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7
dWFwc2RfdmkgPSBCSVQoMCl8QklUKDEpOzxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0
O3VhcHNkX2JrID0gMDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7cW9zX2luZm8mYW1wO0JJVCgy
KSk8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF9iayA9IEJJVCgwKXxCSVQo
MSk7PGJyPg0KJmd0OyArPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2RfYmUgPSAwOzxicj4NCiZn
dDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgaWYgKHBzdGF0LSZndDtxb3NfaW5mbyZhbXA7QklUKDMpKTxicj4NCiZndDsgK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcHN0YXQtJmd0O3VhcHNkX2JlID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyArwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBicmVhazs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9IGVsc2Ugezxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJyZWFrOzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQo8YnI+DQp0aGVyZSBpcyBh
IGJ1ZyBoZXJlLCBpZiAqcCogaXMgbm90IG51bGwsIGFuZCAqbWVtY21wKiBmYWlsZWQ7IHRoZW4g
d2UgZmFsbCBpbiBlbHNlIHBhcnQgYW5kIGJyZWFrLCBhbmQgd2lsbCBtaXNzIHRoZSBuZXh0IGVu
dHJ5IGluICpwKiB1c2luZyBiZWxvdyBzdGF0ZW1lbnQ8YnI+DQo8YnI+DQpwID0gcCArIGllX2xl
biArIDI7PGJyPg0KPGJyPg0KPGJyPg0KJmd0OyA8YnI+DQo8YnI+DQpSZWdhcmRzLDxicj4NCjxi
cj4NCn5QcmF2ZWVuLjxicj4NCjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj4NCg==
--000000000000ea52d205cf41c712--

