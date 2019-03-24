X-GM-THRID: 6671816179609239552
X-Received: by 2002:a50:9745:: with SMTP id d5mr12037858edb.66.1553411321539;
        Sun, 24 Mar 2019 00:08:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ebb:: with SMTP id w56ls982484edw.2.gmail; Sun, 24 Mar
 2019 00:08:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzeoYEjZYDwMMgikg4NRihWUfohe957AG9FmNA9OjFFRqH0qiYa6EEaAaYcDsNXPr/+CZIv
X-Received: by 2002:a50:eb4d:: with SMTP id z13mr4670721edp.200.1553411320709;
        Sun, 24 Mar 2019 00:08:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553411320; cv=none;
        d=google.com; s=arc-20160816;
        b=YvqY1QvGlJxEKjhlkupFhKJLVDlAqdjnQSvm7qqALWo/TWOkAtxXiuczgsL7xYh3Sk
         tjTevO8J41k5CVhpnICXtGaVR5uNWIHfL7WHximcLc/cz3jCwPBW8WvKdsUObfcws3iU
         CKHYkGKPZVyxZ4lJdzU8pMMCTTIPl0JFQrPz0Gc+O62Z4RSq7j7eXWU0mD2Wd4dt3+qb
         2tnq5hU+NTMB5XkB/KoBeUhukXI1dOVzGtLYeBYpXrDDYdos22gq14T/cGX1jlpN4J8z
         34+K7gnId6hNZ53r7Hr6hD/crzGtkzT8M+aoDjHwiZuqdT2S9NTczEldTSo1ukV3Zmxt
         sAYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DBphGMjA4DfaEdxbw8T030c29viYipZj8ZzC9gaenCc=;
        b=AcBhC//HAcclEW4ZmAhRErGzrv0zNWOPzAeJ8zOubP+JecOt/m7gWVlABFAR6C3wUu
         TTvCRnGu3hILHRRwDrfR75p6Ldl4lVd6/dySNUyWOuAMIvwShs3mC71SATRjD1dHDABt
         SLLZa9W/XA7w6cxyyMh9GCMuSCRveOcw5XTYV4rGH/6oI1oQ8aKin1yLXg9dB+usOan7
         GaKSrjItsKkp33MX/xfH+lNQB+3YmaxqPrryAAjRLV4b8iiY9ft6KWB88QXW1jGAWVgi
         Vmc9slQDOHX1zd4LHJTzGw+aZoXNFgF3DS69V4o5yf5rxeql+r+5keZzNwRrHWHNuaDn
         NRCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p25si658266eju.1.2019.03.24.00.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 00:08:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300511364"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 08:08:27 +0100
Date: Sun, 24 Mar 2019 08:08:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: rtl8712: avoid camelcase
 variable name 'backupTKIPCountermeasure'
In-Reply-To: <CANTOzWGk8z4MRF1aJ5z628dB7XpR9axYsWrstKkVtaW5B=k8FA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903240808100.2526@hadrien>
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com> <78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903240744510.2526@hadrien>
 <CANTOzWGk8z4MRF1aJ5z628dB7XpR9axYsWrstKkVtaW5B=k8FA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1749069837-1553411307=:2526"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1749069837-1553411307=:2526
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 24 Mar 2019, Payal Kshirsagar wrote:

>
>
> On Sun, Mar 24, 2019, 12:15 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 24 Mar 2019, Payal Kshirsagar wrote:
>
>       > Eliminate camelcase variable names to fix the style issue –
>       ‘avoid
>       > camelcase’.
>       >
>       > Signed-off-by: Payal Kshirsagar
>       <payal.s.kshirsagar.98@gmail.com>
>       > ---
>       >  drivers/staging/rtl8712/mlme_linux.c | 6 +++---
>       >  1 file changed, 3 insertions(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/mlme_linux.c
>       b/drivers/staging/rtl8712/mlme_linux.c
>       > index 2463344..6323061 100644
>       > --- a/drivers/staging/rtl8712/mlme_linux.c
>       > +++ b/drivers/staging/rtl8712/mlme_linux.c
>       > @@ -88,7 +88,7 @@ static struct RT_PMKID_LIST 
>        backup_PMKID_List[NUM_PMKID_CACHE];
>       >  void r8712_os_indicate_disconnect(struct _adapter *adapter)
>       >  {
>       >       u8 backup_PMKID_index = 0;
>       > -     u8 backupTKIPCountermeasure = 0x00;
>       > +     u8 backup_TKIP_count_measure = 0x00;
>       >
>       >       r8712_indicate_wx_disassoc_event(adapter);
>       >       netif_carrier_off(adapter->pnetdev);
>       > @@ -103,7 +103,7 @@ void r8712_os_indicate_disconnect(struct
>       _adapter *adapter)
>       >                      &adapter->securitypriv.PMKIDList[0],
>       >                      sizeof(struct RT_PMKID_LIST) *
>       NUM_PMKID_CACHE);
>       >               backup_PMKID_index =
>       adapter->securitypriv.PMKIDIndex;
>       > -             backupTKIPCountermeasure =
>       > +             backup_TKIP_count_measure =
>
>       You actually changed the sense of the identifier here.  The
>       original name
>       ended with countermeasure, while your name ends with
>       count_measure, which
>       suggests something quite different.
>
> Okay I will drop this patch .

You could also fix it to use the proper name.

julia

> Thanks,
> Payal
>
>       julia
>
>       >                     
>        adapter->securitypriv.btkip_countermeasure;
>       >               memset((unsigned char *)&adapter->securitypriv,
>       0,
>       >                      sizeof(struct security_priv));
>       > @@ -117,7 +117,7 @@ void r8712_os_indicate_disconnect(struct
>       _adapter *adapter)
>       >                      sizeof(struct RT_PMKID_LIST) *
>       NUM_PMKID_CACHE);
>       >               adapter->securitypriv.PMKIDIndex =
>       backup_PMKID_index;
>       >               adapter->securitypriv.btkip_countermeasure =
>       > -                                     
>       backupTKIPCountermeasure;
>       > +                                     
>       backup_TKIP_count_measure;
>       >       } else { /*reset values in securitypriv*/
>       >               struct security_priv *psec_priv =
>       &adapter->securitypriv;
>       >
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/78d3539092434900b454aaa6
>       76e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032407
>       44510.2526%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWGk8z4MRF1aJ5z628d
> B7XpR9axYsWrstKkVtaW5B%3Dk8FA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1749069837-1553411307=:2526--

