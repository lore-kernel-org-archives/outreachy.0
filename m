X-GM-THRID: 6674267883353145344
X-Received: by 2002:a2e:3015:: with SMTP id w21mr977800ljw.20.1554199117550;
        Tue, 02 Apr 2019 02:58:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9c88:: with SMTP id x8ls1607517lji.1.gmail; Tue, 02 Apr
 2019 02:58:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8oJxriSJcHcGWD7LuR4qJonlgobXywwJfGBSja0j01r0B7g+9hG/ZNI6mKmwKPFwnE0ml
X-Received: by 2002:a2e:9c2:: with SMTP id 185mr2151505ljj.4.1554199116686;
        Tue, 02 Apr 2019 02:58:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554199116; cv=none;
        d=google.com; s=arc-20160816;
        b=I7FWrlJ2QolHxP9ZcefUu8WF7oQe4jho2DD86DZ/ICyTARgwaqfEqhpxXzl5Y0/7ed
         pAm7XvKaOjgCMnYrlksQx3yvxfavaEskFf9mQOrkYnHvZ6352e7l/i1akwXUmbnOLobm
         qPYj6wTZCmsmGmgRX+rqGTj/mUfqTO2D4HKx0SyK3VGssEfFMBj1vMNO2N78jAzNttav
         2SRyIwpxwqqDQ4AQ3geI94XZkDJefA7EGYk2bB2umbITP75NHNx2+lr+749+tS0K9cu3
         +DQynhvkg7RT9btj8S3bi5Aa2ZRWf9IdlteKAcmB7dSbQhERqqoCV9vulFtsfKHzhynI
         8PKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HSGcwpSiW9vmsxDrfwHUa0DRvu/mAC0lD3iUMG4PAv8=;
        b=DQuXDEmONkw7UGYZZanFvLh7eIE1OB59+m2gePZUU4Sis2tG2kn/ytUfZdztCW/CVW
         /3ZD9mFonpBJjGtEZ8aHqpmcoc/3oNWxa456swiEXkCxjaPEozc2nKQW1J5jnaHm3zMV
         CGwgD5OB7lE0OZT8a40+71IDnySPvR1CbAxH7RSAGp+wP3a+ox/+tDMmkjrq3c3qS4YS
         MzIP1H3RAj8in5LQZDujdNv6qgp6DsdLA2dnaLnE60tiquky4RNqJsznMwuG5zAhO9ho
         58mjO76fz08zBdxns2jhui6+j/Mdh55EYpRPVazsrTqhezYfXFV9sdAVISBFVCS/aHLg
         +f2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u21si364712lja.1.2019.04.02.02.58.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 02:58:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,300,1549926000"; 
   d="scan'208";a="376797990"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 11:58:35 +0200
Date: Tue, 2 Apr 2019 11:58:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v4 6/6] staging: rtl8712: use
 list_entry in function r8712_select_and_join_from_scan
In-Reply-To: <CAPnhUpYU627URfjCLf6YhWvweFgdonjuMrSUj4g_W=C3OTm0eg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1904021157590.3297@hadrien>
References: <20190401200955.98744-1-himadri18.07@gmail.com> <20190401200955.98744-7-himadri18.07@gmail.com> <20190402055701.GJ14075@kroah.com> <alpine.DEB.2.21.1904020831350.2664@hadrien> <CAPnhUpYU627URfjCLf6YhWvweFgdonjuMrSUj4g_W=C3OTm0eg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-923267958-1554199112=:3297"

--8323329-923267958-1554199112=:3297
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 2 Apr 2019, Himadri Pandya wrote:

>
>
> On Tue, 2 Apr, 2019, 12:05 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:
>
>
>       On Tue, 2 Apr 2019, Greg KH wrote:
>
>       > On Tue, Apr 02, 2019 at 01:39:55AM +0530, Himadri Pandya
>       wrote:
>       > > struct wlan_network contains field list of type list_head.
>       Hence,
>       > > getting the address of wlan_network using list_entry is
>       equivalent
>       > > of using container_of to do the same. And to use list_entry
>       for list
>       > > manipulations is a better choice.
>       > >
>       > > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>       > > ---
>       > > Changes in V4:
>       > >� � �- Change log message
>       > > Changes in V3:
>       > >� � �- Improve log message
>       > > ---
>       > >� drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
>       > >� 1 file changed, 2 insertions(+), 2 deletions(-)
>       > >
>       > > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
>       b/drivers/staging/rtl8712/rtl871x_mlme.c
>       > > index 1a15c45aa83b..164422b3ac07 100644
>       > > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
>       > > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
>       > > @@ -1117,8 +1117,8 @@ int
>       r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
>       > >� � � � � � � � � � �}
>       > >� � � � � � � � � � �return _FAIL;
>       > >� � � � � � �}
>       > > -� � � � � �pnetwork = container_of(pmlmepriv->pscanned,
>       > > -� � � � � � � � � � � � � � � � � �struct wlan_network,
>       list);
>       > > +� � � � � �pnetwork = list_entry(pmlmepriv->pscanned,
>       > > +� � � � � � � � � � � � � � � � �struct wlan_network,
>       list);
>       > >� � � � � � �if (pnetwork == NULL)
>       > >� � � � � � � � � � �return _FAIL;
>       >
>       > A list entry can not be null, so this check is very odd.
>
>       I guess it could be, if the value is NULL, because the list
>       field is at
>       the top of the structure.� However, it looks like the list is
>       build
>       properly, with init_list_head and then list_add_tail, so the
>       NULL test
>       should not be needed.
>
>
> Should I remove the NULL test then?

Yes, but you need to explain in the log message in terms of the code why
removing it is correct.

julia

>
>
>       Himadri, there are several very simple loops on lists that could
>       be nicely
>       converted to list_for_each or list_for_each_entry.� Search for
>       end_of_queue_search.
>
>       julia
>
>
> On it. Thank you.
>
> - Himadri
>
>
>
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190402055701.GJ14075%4
>       0kroah.com.
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
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19040208
>       31350.2664%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
>
>
--8323329-923267958-1554199112=:3297--

