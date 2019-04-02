X-GM-THRID: 6674267883353145344
X-Received: by 2002:ac2:54b6:: with SMTP id w22mr2029086lfk.15.1554187004431;
        Mon, 01 Apr 2019 23:36:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43af:: with SMTP id t15ls1056359lfl.8.gmail; Mon, 01 Apr
 2019 23:36:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzz1lZ4JBhuY7gRm7Nwtk77EMSj3E/1dkuSUyLtWgyRJ49Y6pLpPkp4ZjeX2mDV25/GxkDD
X-Received: by 2002:ac2:5a4f:: with SMTP id r15mr1896269lfn.11.1554187003644;
        Mon, 01 Apr 2019 23:36:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554187003; cv=none;
        d=google.com; s=arc-20160816;
        b=SfDDejV06FIhr46AqCj7xOvX12qdL1qeVJe09AImUpXFamR0ycG17Y2kg+0kqUSRSK
         ui22S92cxagA4Le1/RW1wcupXilzQlgejv2ngsACfI7NFMfvGmWVmCHFAk+6o+OzRvlB
         Nsfv/Gz1G5BgCfutz2ON8X3qF4vXNp1JvT4l4wCYHHuSK+DzO2M+Zvdn31E9EWBPDeDV
         oinXXoji6aZJ3hO2+z3hykZcM+flkJCv5Ib7OGvVJ95ma/P0SPwaxz26H0Vm4dVgat/E
         uvADrbIKjFFaaRUN5wbFz8hXKTfG3ebxbMAofrtRS3zkFSq5nLRzjx/alm5sEtdJllMB
         5EPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tcduzKwbUNsLs5ez2q9ehjIlADxrgDNhUw3GwEM03zo=;
        b=swuOSy3WTChynbSb1QL9oxuVD6YrNcncJXulDT2bwQbKMpN/GVqr7ylv3e3Y5lp+XX
         WM7YM/jD/F2pJkrPm+zuxREjZOQUSS4RmYKL+WGJMgVo4kNi/iSE8f89y4Dr00h3T/ds
         KCSctpu/pnUsr3LlrDbopn8Q60KZbedDlAPOkok2yzVVStE5PIXtWnBI9sE4owditAQE
         z1shecPMquYWjgc5ksjo7OJPtBUyvmt0rarnV21CEfFXhQlhzEfPC4l7vUVZopBSvs2U
         4qHC5l3REjsQTU6IGn7zIaKDL/KGFid/7xTkZ9fGRhWlpqBzWOsZ+/4pf0uMOs+y2mnQ
         5p1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h7si691402ljj.5.2019.04.01.23.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:36:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,298,1549926000"; 
   d="scan'208";a="376752868"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 08:36:42 +0200
Date: Tue, 2 Apr 2019 08:36:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Himadri Pandya <himadri18.07@gmail.com>, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4 3/6] staging: rtl8712: use
 list_entry in function _free_network_queue
In-Reply-To: <20190402055608.GG14075@kroah.com>
Message-ID: <alpine.DEB.2.21.1904020835560.2664@hadrien>
References: <20190401200955.98744-1-himadri18.07@gmail.com> <20190401200955.98744-4-himadri18.07@gmail.com> <20190402055608.GG14075@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 2 Apr 2019, Greg KH wrote:

> On Tue, Apr 02, 2019 at 01:39:52AM +0530, Himadri Pandya wrote:
> > struct wlan_network contains field list of type list_head. Hence,
> > getting the address of wlan_network using list_entry is equivalent
> > of using container_of to do the same. And to use list_entry for list
> > manipulations is a better choice.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> > Changes in V4:
> > 	- Change log message
> > Changes in V3:
> > 	- Improve log message
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index 6912d73e8172..e0b4b8fbcc0e 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -162,7 +162,7 @@ static void _free_network_queue(struct _adapter *padapter)
> >  	phead = &scanned_queue->queue;
> >  	plist = phead->next;
> >  	while (!end_of_queue_search(phead, plist)) {
> > -		pnetwork = container_of(plist, struct wlan_network, list);
> > +		pnetwork = list_entry(plist, struct wlan_network, list);
>
> Very odd, I think you can use list_for_each_entry() here too, but be
> careful to verify it, I don't know what end_of_queue_search() is trying
> to do.

Nothing. It's an equality test on the head.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402055608.GG14075%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

