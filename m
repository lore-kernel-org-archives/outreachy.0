X-GM-THRID: 6885771919120924672
X-Received: by 2002:a0c:f393:: with SMTP id i19mr1054684qvk.61.1603254545350;
        Tue, 20 Oct 2020 21:29:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5956:: with SMTP id 22ls1531014qtz.4.gmail; Tue, 20 Oct
 2020 21:29:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzp8dSonRBXb4QPlDFUxMXIq/YugV5fyxfcHWSzUt4qYrUarkKO7autXBs5pO6uFFefSL04
X-Received: by 2002:ac8:6cf:: with SMTP id j15mr1463378qth.219.1603254544002;
        Tue, 20 Oct 2020 21:29:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603254543; cv=none;
        d=google.com; s=arc-20160816;
        b=IEYD9eQPrely8swrybXJTKyBO3ABpgC42RBcA0BsWb7C2Nj+y0Mfy21ech36J4X23m
         ZmSTA1NguN/wsRCfAmZCtx8f/FOELd0ZK6479AIq3vrtNhc1mcC6hQ9sxcCXaWTpdnXK
         4dGj8gxBajootkgLm0DlBzMXAYMImv/0SsnGD1nC04I589Uxs+uJjHcgb+ABYU8DQxsf
         hO/IozN8xCpdgbrjtsDUtPsJe75i26TTe09kC8lQm9lj6LBidCDw6fv1L53vSbi0OIqO
         toMwaiJd94USLsquOSOvqKUPN4p9/YDpepNd9sxqItls68Y9nFbpctTL3aU4Wqpydxsj
         k66g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=kHNTDnEmbMsgkShjK28jcig/bkwUGss1t972T6HZfOw=;
        b=ks0dMSeneJ56cdOMQiKjq8613Pm1UgJlIwbo25THYAhrwY5T0Ia6UJ9hb09Vs2baLO
         dsxlH+hsagmGfmLfsZannC40gwAN32aBVpJZB+VtP3x7ODSrjxlQZp43SGCICaHcPawV
         WMuxfwWRRARpLWP5ghqU+w1AsNiwfqqYhYFkF04cVvuuCJXFjQYQqt4mdsxICs5AIA9Y
         9dxIrk4i1P/RyCv03t1NCD619h6MJGICYZ/71nJEe8dOfi6qYNZbwUQeA788gSUaiQ0e
         5sqTWLweP8bn87PHOHD7iTPRFgPymN+FNJslzsFVvLmXeqyys0ohCvvX3B9vsB74sQaW
         IUzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.235 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-06.prod.phx3.secureserver.net (p3plsmtpa09-06.prod.phx3.secureserver.net. [173.201.193.235])
        by gmr-mx.google.com with ESMTPS id s76si38793qka.5.2020.10.20.21.29.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 21:29:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.235 as permitted sender) client-ip=173.201.193.235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.235 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ot1-f44.google.com ([209.85.210.44])
	by :SMTPAUTH: with ESMTPSA
	id V5kEkUncVz5JkV5kEktuwC; Tue, 20 Oct 2020 21:29:03 -0700
X-CMAE-Analysis: v=2.3 cv=aPSOVo1m c=1 sm=1 tr=0
 a=PnbjpSU/03CrHefOPWZnMg==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ot1-f44.google.com with SMTP id f37so680205otf.12
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 21:29:02 -0700 (PDT)
X-Gm-Message-State: AOAM532goTSsYdU4CY1Oo69x9kLsk1aRSFy9DBT0zV7p1lEm6f1X38MI
	kuYx1Fbia1L+yzl9vT4bvOaj4vhzsWvmZUuZYaU=
X-Received: by 2002:a9d:1ec2:: with SMTP id n60mr1227974otn.63.1603254542550;
 Tue, 20 Oct 2020 21:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20201020182439.43314-1-eafanasova@gmail.com>
In-Reply-To: <20201020182439.43314-1-eafanasova@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 21 Oct 2020 09:58:50 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKv0-E9w-LdbwNr8vszm_6cwkwF9ic5eDysC7xETnotNg@mail.gmail.com>
Message-ID: <CAK-LDbKv0-E9w-LdbwNr8vszm_6cwkwF9ic5eDysC7xETnotNg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging/rtl8712: remove extra
 blank lines; fix code alignment
To: Elena Afanasova <eafanasova@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfKrAktcKD17XwNyJ+oMhliX6y0GugPBOARo1LKZC0cUEkpBd3h6YrgGO5UKsx/ds/YFgdwU5c+U0NSVPDA3zaAxgamH03/ZhGKyWdLNtHC1OWhXYWHN8
 4Mpxa5Fd0IXIojfRycmwZaq7iMDqWgo778Uw4CbvS2ksEKIOCxJ0mqzEmrIz9g2ZylqAn2FpjDJ/dUSzOUJi92d1SuMHik2eQTo=

On Wed, Oct 21, 2020 at 12:01 AM Elena Afanasova <eafanasova@gmail.com> wrote:
>
> Reported by checkpatch.pl
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>

This patch is fixing 2 different checkpatch warnings. They
should be sent as separate patches. One for removing extra
blank lines, another one for fixing the code alignment.

> ---
>  drivers/staging/rtl8712/rtl871x_recv.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
> index e83c256e1474..57a965b9839b 100644
> --- a/drivers/staging/rtl8712/rtl871x_recv.h
> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -29,7 +29,6 @@ struct        stainfo_rxcache {
>  #define                PHY_RSSI_SLID_WIN_MAX                   100
>  #define                PHY_LINKQUALITY_SLID_WIN_MAX            20
>
> -
>  struct smooth_rssi_data {
>         u32     elements[100];  /* array to store values */
>         u32     index;          /* index to current array to store */
> @@ -38,7 +37,6 @@ struct smooth_rssi_data {
>  };
>
>  struct rx_pkt_attrib {
> -
>         u8      amsdu;
>         u8      order;
>         u8      qos;
> @@ -129,7 +127,7 @@ union recv_frame *r8712_alloc_recvframe(struct  __queue *pfree_recv_queue);
>  void r8712_free_recvframe(union recv_frame *precvframe,
>                           struct  __queue *pfree_recv_queue);
>  void r8712_free_recvframe_queue(struct  __queue *pframequeue,
> -                                struct  __queue *pfree_recv_queue);
> +                               struct  __queue *pfree_recv_queue);
>  int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe);
>  int recv_func(struct _adapter *padapter, void *pcontext);
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201020182439.43314-1-eafanasova%40gmail.com.



-- 
Vaishali


-- 
Vaishali

