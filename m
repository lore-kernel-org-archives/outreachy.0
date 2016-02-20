X-GM-THRID: 6252743439403712512
X-Received: by 10.112.135.234 with SMTP id pv10mr2217079lbb.24.1455941690967;
        Fri, 19 Feb 2016 20:14:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.141.200 with SMTP id p191ls55219wmd.48.gmail; Fri, 19 Feb
 2016 20:14:50 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr36970wme.0.1455941690428;
        Fri, 19 Feb 2016 20:14:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si504872wmd.0.2016.02.19.20.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 20:14:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,473,1449529200"; 
   d="scan'208";a="203870325"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 05:14:49 +0100
Date: Fri, 19 Feb 2016 23:14:47 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Tha=EDssa_Falbo?= <thaissa.falbo@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: remove
 ret variable in switch statements
In-Reply-To: <CAKqL7ZW0+C-GuoJgnJ-pX-8cWjEnBNVWF_64fw7OTHAne6DkgQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602192313460.2806@hadrien>
References: <1455830274-15956-1-git-send-email-thaissa.falbo@gmail.com> <alpine.DEB.2.10.1602182214340.2821@hadrien> <CAKqL7ZW0+C-GuoJgnJ-pX-8cWjEnBNVWF_64fw7OTHAne6DkgQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-211822808-1455941689=:2806"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-211822808-1455941689=:2806
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 19 Feb 2016, Thaíssa Falbo wrote:

> 2016-02-19 1:16 GMT-02:00 Julia Lawall <julia.lawall@lip6.fr>:
> > On Thu, 18 Feb 2016, Thaissa Falbo wrote:
> >
> >> Remove ret variable in functions that used it to determine the return.
> >> Simplified the return logic for these functions.
> >>
> >>
> >> Found with Coccinelle script:
> >>
> >> @@
> >> local idexpression ret;
> >> expression c,d;
> >> identifier label;
> >> @@
> >>
> >> switch ( ... ) {
> >> case label :
> >> ...
> >> - ret = c;
> >> - break;
> >> + return c;
> >> ...
> >> default:
> >> ...
> >> - ret = d;
> >> + return d;
> >> ...
> >> }
> >> ... when != ret
> >> - return ret;
> >
> > Perhaps this is OK for this example, but it doesn't seem like a generlly
> > useful rule.  There could be some cleanup code that is executed between
> > the end of the switch and the return ret that is not getting executed.
> >
> >>
> >> @@
> >> type T; identifier i;
> >> @@
> >> - T i;
> >> ... when != i
> >>
> >>
> >>
> >> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
> >> ---
> >>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++--------
> >>  drivers/staging/media/davinci_vpfe/dm365_isif.c  | 11 +++--------
> >>  2 files changed, 6 insertions(+), 16 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> >> index ac78ed2..ff47a8f3 100644
> >> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> >> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> >> @@ -1350,21 +1350,16 @@ error:
> >>   */
> >>  static long ipipe_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
> >>  {
> >> -     int ret = 0;
> >> -
> >>       switch (cmd) {
> >>       case VIDIOC_VPFE_IPIPE_S_CONFIG:
> >> -             ret = ipipe_s_config(sd, arg);
> >> -             break;
> >> +             return ipipe_s_config(sd, arg);
> >>
> >>       case VIDIOC_VPFE_IPIPE_G_CONFIG:
> >> -             ret = ipipe_g_config(sd, arg);
> >> -             break;
> >> +             return ipipe_g_config(sd, arg);
> >>
> >>       default:
> >> -             ret = -ENOIOCTLCMD;
> >> +             return -ENOIOCTLCMD;
> >>       }
> >> -     return ret;
> >>  }
> >>
> >>  void vpfe_ipipe_enable(struct vpfe_device *vpfe_dev, int en)
> >> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> >> index cfad426..71d3314 100644
> >> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> >> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> >> @@ -625,21 +625,16 @@ static int isif_set_params(struct v4l2_subdev *sd, void *params)
> >>   */
> >>  static long isif_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
> >>  {
> >> -     int ret;
> >> -
> >>       switch (cmd) {
> >>       case VIDIOC_VPFE_ISIF_S_RAW_PARAMS:
> >> -             ret = isif_set_params(sd, arg);
> >> -             break;
> >> +             return isif_set_params(sd, arg);
> >>
> >>       case VIDIOC_VPFE_ISIF_G_RAW_PARAMS:
> >> -             ret = isif_get_params(sd, arg);
> >> -             break;
> >> +             return isif_get_params(sd, arg);
> >>
> >>       default:
> >> -             ret = -ENOIOCTLCMD;
> >> +             return -ENOIOCTLCMD;
> >>       }
> >> -     return ret;
> >>  }
> >>
> >>  static void isif_config_gain_offset(struct vpfe_isif_device *isif)
> >> --
> >> 2.1.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455830274-15956-1-git-send-email-thaissa.falbo%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> Hi!
>
> Yes, I was afraid of the coccinelle script not working for more
> examples because there could be more handling of the ret variable. I
> thought the line "... when != ret" would catch?


The error handling will probably not involve ret.  It may free something
that has previousy been allocated.  The changes look ok, though, because
there is nothing before the return.

julia

>
> Anyways, is this patch ok?
>
>
> Thaissa
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKqL7ZW0%2BC-GuoJgnJ-pX-8cWjEnBNVWF_64fw7OTHAne6DkgQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-211822808-1455941689=:2806--

