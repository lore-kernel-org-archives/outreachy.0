X-GM-THRID: 7022901752311578624
X-Received: by 2002:a9d:424:: with SMTP id 33mr19998420otc.340.1635261161615;
        Tue, 26 Oct 2021 08:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:702:: with SMTP id y2ls5724942ots.9.gmail; Tue, 26
 Oct 2021 08:12:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzowNoRm7pgP/Yxot5zDeFi0iWYoGsn0Ff3tPwMIOJyif/VN5dg6N8++I4sbsqI0ts7rdqu
X-Received: by 2002:a05:6830:348f:: with SMTP id c15mr19154493otu.261.1635261160830;
        Tue, 26 Oct 2021 08:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635261160; cv=none;
        d=google.com; s=arc-20160816;
        b=uI2Ab+Yjktw1IYo5hwaQ1vGa/VGyNtiuEwdVVHYgVmdTfo4pgjBilFTUfPHnhojbfl
         GYXrbZqNamTctFzFA7YKyyoZDghXDDqh1UEC8LBwyDtSdr1mwfUx4aomLL6ELXIRGyab
         Sv7Ldx7XSkcNtCJPGIfyO2MEIUAV7IBm9T7q8a/rLPF1aQJ8AJELwZgMiWfP9bNRvxPj
         FGI5h3D5nto6vB16/FEEA8lEQ29CalHf97JwD09RNcG642d9Bpa0zOlCQxW9YyC7NKoG
         W4RARUHZviYdmmrFCAmVtrWcpAHQIFk3rkN20M+e6fD2SrDtRifBgfJS+AOJwDzPf3DK
         9fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4b04FIiZAy5VCZITjvG96V5qUgnQW1JJ52qSMhgrEm0=;
        b=zXEdiqlQBghnflR67fpcbIL092ssM333m3jUNHpS1dUNggTVlRJmbkK065Zle5Drcx
         ScjQEpqDGdRHY6aIF+SybD2ZYTH/pLmT7F4fKIkFI7wLll+vuoCRnA20MbLZjmgv+kiu
         kui9/5en4HMSTvN4DGPiiSSJYr1EyGX/9CRgxSJ2HmdLlv0BVUcKVmgyHfsLJFdYhldV
         Ak6zXfrveQJ4LOeVXJwr114/a0bZyLpLVTtXJitLoAqhzlMce4v8M2T3Sfro18oUwqaT
         0VNHkBDtZXvAYkWD8kjhDkZiqQ0ppxKuRHW8/RBVkybZ9UhI/908UvYFcuDQwLix056n
         ZRMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Isimquek;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id b132si1634831oif.1.2021.10.26.08.12.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 08:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Isimquek;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x835.google.com with SMTP id y11so13764975qtn.13
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 08:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4b04FIiZAy5VCZITjvG96V5qUgnQW1JJ52qSMhgrEm0=;
        b=IsimquekxMvKwp7nZpnbc53zxef5xaT0wLQmamQUDlVxcNoZSqMRnysnMpXwqpvLcZ
         xrxycGsU0/Mw9kiGpUj4ifucd18qaf8AiwfVjASqtdsJC7lRUtHYMj5d0ApaL5CHtanN
         JdU46hTijhExarGZigFkJLkv1LAQJzOjWpJG7TTep85mHaBKbgHWuSVewVQM1P+VxUck
         8fF/8SSf5hYYObaQyGeOhOQm1tDl4VAwq7zlxXSBTTqhGGRN/r9Xfqc7hCwI9EoUKU7b
         pJ0dHzWIbbOS1lNX4f6kMe28TdUhsvzkXR0vfopDuKsmd9Y4BpH0ONh4Wr1W8GYwOdXD
         y0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4b04FIiZAy5VCZITjvG96V5qUgnQW1JJ52qSMhgrEm0=;
        b=Ohe82h8hb8ZwRwIePbZCRmzFJCePZoVgnbpnTdD/jUVQPQfBXmdXNIGjL7PSJtcPZJ
         E1WnlyUd84BBzZieKG5njd+ge0/MMC3bzF3/4v5amMHpKIwKQpOSWHQ7SV7dzBh+5ykh
         bBOBhcenQbDJ/aJASTpdamU0DBaAKpidBS9LbB7CPwg5D2oFSuu5GkrzzblHm8hx82s3
         46O7uxxrPoGOlCmDD/w7AdUbrQRjqwFYfqyyCIBBUBovCGJglwK9wNkY49aetbfJm8aO
         E87XFNQX/TYdLQZKAouP9GvmnM1ngIgmtHaDqICJgc7jSkWqXUVqFsj24uVVXwnQsI1Y
         p98g==
X-Gm-Message-State: AOAM533n16bSU5Uz16+l3RbemN/rIpmSp7PFmwuCBThZvBYDvoolFFzT
	hykPGDS6gHOlQC9XhPANPd8ijYY9VUgIixkHAaw=
X-Received: by 2002:ac8:4159:: with SMTP id e25mr25433452qtm.69.1635261160269;
 Tue, 26 Oct 2021 08:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <20211026134253.7868-1-kushalkothari285@gmail.com> <YXgOdpebeA/dFWIz@kernel.org>
In-Reply-To: <YXgOdpebeA/dFWIz@kernel.org>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Tue, 26 Oct 2021 20:42:28 +0530
Message-ID: <CALtHPQuKDa23Ui4wBVed=7FOkf6u+-MjL1VU-4CD6hXSjmsq6g@mail.gmail.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: core: Refactor nested if-else
To: Mike Rapoport <mike.rapoport@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, fabioaiuto83@gmail.com, 
	ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com, 
	"Fabio M. De Francesco" <fmdefrancesco@gmail.com>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	kushalkothari2850@gmail.com
Content-Type: multipart/alternative; boundary="00000000000092ac4105cf42e878"

--00000000000092ac4105cf42e878
Content-Type: text/plain; charset="UTF-8"

Yes!
Also initializing  variable pstat->has_legacy_ac = false;  //false
which is previously set to true before the loop so it can be removed too.

On Tue, Oct 26, 2021 at 7:49 PM Mike Rapoport <mike.rapoport@gmail.com>
wrote:

> On Tue, Oct 26, 2021 at 07:12:53PM +0530, Kushal Kothari wrote:
> > Refactor nested if-else to avoid deep indentations. There is no change
> > in the logic of the new code, however, now it is simple because it gets
> > rid of five unnecessary else conditionals and it combines nested if into
> > single if-else-if. This refactor also leads to fix warning detected by
> > checkpatch.pl:
> > WARNING: Too many leading tabs - consider code refactoring
> >
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > ---
> >
> > Changes in v2: Fix the bug of not handling properly the else logic
> > when p is not null in else-if. Also, reword the subject line and break
> > it up at 72 columns.
> >
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 69 ++++++++-----------
> >  1 file changed, 29 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > index 0f82f5031c43..267d853b1514 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > @@ -1192,50 +1192,39 @@ unsigned int OnAssocReq(struct adapter
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
> > +                     if (p && memcmp(p+2, WMM_IE, 6)) {
> > +                             p = p + ie_len + 2;
> > +                     } else if (p && !memcmp(p+2, WMM_IE, 6)) {
> > +                             pstat->flags |= WLAN_STA_WME;
> > +                             pstat->qos_option = 1;
> > +                             pstat->qos_info = *(p+8);
> > +                             pstat->max_sp_len =
> (pstat->qos_info>>5)&0x3;
> > +
> > +                             pstat->has_legacy_ac = false;
> > +                             if ((pstat->qos_info&0xf) != 0xf)
> > +                                     pstat->has_legacy_ac = true;
> > +
> > +                             if (pstat->qos_info&0xf) {
> > +                                     pstat->uapsd_vo = 0;
>
> This variable and other variables below are set to 0 just before the loop,
> so the initialization here can be removed.
>
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
> > -                     p = p + ie_len + 2;
> >               }
> >       }
> >
> > --
> > 2.25.1
> >
>
> --
> Sincerely yours,
> Mike.
>

--00000000000092ac4105cf42e878
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+WWVzITxicj5BbHNvIGluaXRpYWxpemluZ8KgIDxzcGFuIHN0eWxlPSJi
YWNrZ3JvdW5kLWNvbG9yOnJnYigyMzgsMjM4LDIzOCkiPjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5k
LWNvbG9yOnJnYigyNTUsMjU1LDI1NSkiPnZhcmlhYmxlIDwvc3Bhbj5wc3RhdC0mZ3Q7aGFzX2xl
Z2FjeV9hYyA9IGZhbHNlO8KgIDwvc3Bhbj4vL2ZhbHNlIDxicj53aGljaCBpcyBwcmV2aW91c2x5
IHNldCB0byA8c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjM4LDIzOCwyMzgpIj50
cnVlPC9zcGFuPiBiZWZvcmUgdGhlIGxvb3Agc28gaXQgY2FuIGJlIHJlbW92ZWQgdG9vLjwvZGl2
Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWls
X2F0dHIiPk9uIFR1ZSwgT2N0IDI2LCAyMDIxIGF0IDc6NDkgUE0gTWlrZSBSYXBvcG9ydCAmbHQ7
PGEgaHJlZj0ibWFpbHRvOm1pa2UucmFwb3BvcnRAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+
bWlrZS5yYXBvcG9ydEBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVv
dGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2Jv
cmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPk9u
IFR1ZSwgT2N0IDI2LCAyMDIxIGF0IDA3OjEyOjUzUE0gKzA1MzAsIEt1c2hhbCBLb3RoYXJpIHdy
b3RlOjxicj4NCiZndDsgUmVmYWN0b3IgbmVzdGVkIGlmLWVsc2UgdG8gYXZvaWQgZGVlcCBpbmRl
bnRhdGlvbnMuIFRoZXJlIGlzIG5vIGNoYW5nZTxicj4NCiZndDsgaW4gdGhlIGxvZ2ljIG9mIHRo
ZSBuZXcgY29kZSwgaG93ZXZlciwgbm93IGl0IGlzIHNpbXBsZSBiZWNhdXNlIGl0IGdldHM8YnI+
DQomZ3Q7IHJpZCBvZiBmaXZlIHVubmVjZXNzYXJ5IGVsc2UgY29uZGl0aW9uYWxzIGFuZCBpdCBj
b21iaW5lcyBuZXN0ZWQgaWYgaW50bzxicj4NCiZndDsgc2luZ2xlIGlmLWVsc2UtaWYuIFRoaXMg
cmVmYWN0b3IgYWxzbyBsZWFkcyB0byBmaXggd2FybmluZyBkZXRlY3RlZCBieTxicj4NCiZndDsg
PGEgaHJlZj0iaHR0cDovL2NoZWNrcGF0Y2gucGwiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJf
YmxhbmsiPmNoZWNrcGF0Y2gucGw8L2E+Ojxicj4NCiZndDsgV0FSTklORzogVG9vIG1hbnkgbGVh
ZGluZyB0YWJzIC0gY29uc2lkZXIgY29kZSByZWZhY3RvcmluZzxicj4NCiZndDsgPGJyPg0KJmd0
OyBTaWduZWQtb2ZmLWJ5OiBLdXNoYWwgS290aGFyaSAmbHQ7PGEgaHJlZj0ibWFpbHRvOmt1c2hh
bGtvdGhhcmkyODVAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+a3VzaGFsa290aGFyaTI4NUBn
bWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDsgLS0tPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IENoYW5n
ZXMgaW4gdjI6IEZpeCB0aGUgYnVnIG9mIG5vdCBoYW5kbGluZyBwcm9wZXJseSB0aGUgZWxzZSBs
b2dpYzxicj4NCiZndDsgd2hlbiBwIGlzIG5vdCBudWxsIGluIGVsc2UtaWYuIEFsc28sIHJld29y
ZCB0aGUgc3ViamVjdCBsaW5lIGFuZCBicmVhayA8YnI+DQomZ3Q7IGl0IHVwIGF0IDcyIGNvbHVt
bnMuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3Jl
L3J0d19tbG1lX2V4dC5jIHwgNjkgKysrKysrKystLS0tLS0tLS0tLTxicj4NCiZndDvCoCAxIGZp
bGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pPGJyPg0KJmd0OyA8
YnI+DQomZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3
X21sbWVfZXh0LmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVfZXh0
LmM8YnI+DQomZ3Q7IGluZGV4IDBmODJmNTAzMWM0My4uMjY3ZDg1M2IxNTE0IDEwMDY0NDxicj4N
CiZndDsgLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1lX2V4dC5j
PGJyPg0KJmd0OyArKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3X21sbWVf
ZXh0LmM8YnI+DQomZ3Q7IEBAIC0xMTkyLDUwICsxMTkyLDM5IEBAIHVuc2lnbmVkIGludCBPbkFz
c29jUmVxKHN0cnVjdCBhZGFwdGVyICpwYWRhcHRlciwgdW5pb24gcmVjdl9mcmFtZSAqcHJlY3Zf
ZnJhbWUpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcCA9IHBmcmFtZSArIFdMQU5f
SERSX0EzX0xFTiArIGllX29mZnNldDsgaWVfbGVuID0gMDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBmb3IgKDs7KSB7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgcCA9IHJ0d19nZXRfaWUocCwgV0xBTl9FSURfVkVORE9SX1NQRUNJRklDLCAmYW1w
O2llX2xlbiwgcGt0X2xlbiAtIFdMQU5fSERSX0EzX0xFTiAtIGllX29mZnNldCk7PGJyPg0KJmd0
OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocCkgezxicj4NCiZndDsgLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKCFtZW1jbXAocCsy
LCBXTU1fSUUsIDYpKSB7PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7ZmxhZ3MgfD0g
V0xBTl9TVEFfV01FOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3Fvc19vcHRpb24g
PSAxOzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3Fvc19pbmZvID0gKihwKzgpOzxicj4NCiZndDsgLTxi
cj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgcHN0YXQtJmd0O21heF9zcF9sZW4gPSAocHN0YXQtJmd0O3Fvc19pbmZvJmd0OyZn
dDs1KSZhbXA7MHgzOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKChwc3RhdC0mZ3Q7cW9zX2lu
Zm8mYW1wOzB4ZikgIT0gMHhmKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O2hhc19s
ZWdhY3lfYWMgPSB0cnVlOzxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZWxzZTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0
YXQtJmd0O2hhc19sZWdhY3lfYWMgPSBmYWxzZTs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChw
c3RhdC0mZ3Q7cW9zX2luZm8mYW1wOzB4Zikgezxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBz
dGF0LSZndDtxb3NfaW5mbyZhbXA7QklUKDApKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcHN0YXQtJmd0O3VhcHNkX3ZvID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7IC3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGVsc2U8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1
YXBzZF92byA9IDA7PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocHN0YXQt
Jmd0O3Fvc19pbmZvJmFtcDtCSVQoMSkpPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBwc3RhdC0mZ3Q7dWFwc2RfdmkgPSBCSVQoMCl8QklUKDEpOzxicj4NCiZndDsgLcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgZWxzZTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3VhcHNk
X3ZpID0gMDs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7
cW9zX2luZm8mYW1wO0JJVCgyKSk8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBz
dGF0LSZndDt1YXBzZF9iayA9IEJJVCgwKXxCSVQoMSk7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBl
bHNlPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2RfYmsg
PSAwOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0LSZndDtxb3Nf
aW5mbyZhbXA7QklUKDMpKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQt
Jmd0O3VhcHNkX2JlID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVsc2U8
YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF9iZSA9IDA7
PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBicmVhazs8YnI+
DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwICZhbXA7JmFtcDsg
bWVtY21wKHArMiwgV01NX0lFLCA2KSkgezxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcCA9IHAgKyBpZV9sZW4gKyAyOzxicj4NCiZndDsgK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfSBlbHNlIGlmIChwICZhbXA7JmFtcDsgIW1l
bWNtcChwKzIsIFdNTV9JRSwgNikpIHs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDtmbGFncyB8PSBXTEFOX1NUQV9XTUU7PGJy
Pg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3Rh
dC0mZ3Q7cW9zX29wdGlvbiA9IDE7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7cW9zX2luZm8gPSAqKHArOCk7PGJyPg0KJmd0
OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7
bWF4X3NwX2xlbiA9IChwc3RhdC0mZ3Q7cW9zX2luZm8mZ3Q7Jmd0OzUpJmFtcDsweDM7PGJyPg0K
Jmd0OyArPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBwc3RhdC0mZ3Q7aGFzX2xlZ2FjeV9hYyA9IGZhbHNlOzxicj4NCiZndDsgK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKChwc3RhdC0mZ3Q7cW9zX2lu
Zm8mYW1wOzB4ZikgIT0gMHhmKTxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O2hhc19sZWdhY3lfYWMgPSB0
cnVlOzxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0LSZndDtxb3NfaW5mbyZhbXA7MHhmKSB7PGJyPg0KJmd0
OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBwc3RhdC0mZ3Q7dWFwc2Rfdm8gPSAwOzxicj4NCjxicj4NClRoaXMgdmFyaWFibGUgYW5kIG90
aGVyIHZhcmlhYmxlcyBiZWxvdyBhcmUgc2V0IHRvIDAganVzdCBiZWZvcmUgdGhlIGxvb3AsPGJy
Pg0Kc28gdGhlIGluaXRpYWxpemF0aW9uIGhlcmUgY2FuIGJlIHJlbW92ZWQuPGJyPg0KPGJyPg0K
Jmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBpZiAocHN0YXQtJmd0O3Fvc19pbmZvJmFtcDtCSVQoMCkpPGJyPg0KJmd0OyArwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBwc3RhdC0mZ3Q7dWFwc2Rfdm8gPSBCSVQoMCl8QklUKDEpOzxicj4NCiZndDsgKzxicj4N
CiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcHN0YXQtJmd0O3VhcHNkX3ZpID0gMDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7cW9z
X2luZm8mYW1wO0JJVCgxKSk8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF92
aSA9IEJJVCgwKXxCSVQoMSk7PGJyPg0KJmd0OyArPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2Rf
YmsgPSAwOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0LSZndDtxb3NfaW5mbyZhbXA7QklUKDIpKTxicj4N
CiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3VhcHNkX2JrID0gQklUKDApfEJJVCgxKTs8YnI+
DQomZ3Q7ICs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF9iZSA9IDA7PGJyPg0KJmd0OyArwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAo
cHN0YXQtJmd0O3Fvc19pbmZvJmFtcDtCSVQoMykpPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3Rh
dC0mZ3Q7dWFwc2RfYmUgPSBCSVQoMCl8QklUKDEpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJyZWFrOzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH0gZWxzZSB7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYnJlYWs7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgcCA9IHAgKyBpZV9sZW4gKyAyOzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoH08YnI+DQomZ3Q7wqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIDxicj4NCiZndDsg
LS0gPGJyPg0KJmd0OyAyLjI1LjE8YnI+DQomZ3Q7IDxicj4NCjxicj4NCi0tIDxicj4NClNpbmNl
cmVseSB5b3Vycyw8YnI+DQpNaWtlLjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj4NCg==
--00000000000092ac4105cf42e878--

