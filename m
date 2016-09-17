X-GM-THRID: 6331202607933030400
X-Received: by 10.25.204.21 with SMTP id c21mr251617lfg.19.1474118458392;
        Sat, 17 Sep 2016 06:20:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.196 with SMTP id s187ls226606lja.11.gmail; Sat, 17 Sep
 2016 06:20:57 -0700 (PDT)
X-Received: by 10.46.33.161 with SMTP id h33mr254206lji.19.1474118457944;
        Sat, 17 Sep 2016 06:20:57 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id w79si744808wmw.0.2016.09.17.06.20.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:20:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id k12so6170960lfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 06:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1srKYv1ZLjX0715DJqGQ3j327jCCs+CHpIrH1wUU3T0=;
        b=Dc3ayPZWUxFQEAlb4YNEpAXD2dcqSFZUmYrKOSFJyGm+F6s+IkcIvFrOH1nZQvxCmI
         2vZ99onFOACQ86mCa8S6a5n0TGVyVCATShKg64Z0TOtMjjLCC+s9Ai3KWD6Poa3SRMC+
         AP0SjkKL0mEqAmB31OyrmyajxnzzQ804ulYRoNekgU7ye/wZRjwUmg420ZLB9sXbaVug
         EUYqonD22QNZZrrytm16nzNLQgKdw5ybccsPO7hrlGwnJyA+ndJ26k44egLcyrUNI1YZ
         NEcgvWCGPm7BGWum93Xfr/PEtEMysBZ1rB2iXtmuPcAWTFXcKcQqxEeSfAh766x3H2FG
         e8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1srKYv1ZLjX0715DJqGQ3j327jCCs+CHpIrH1wUU3T0=;
        b=MaORMmsgV61hqQUdJdM4MiHO/dx14hq3pcfMuMBX0CewhokeftLnPmwcqcPXerfgZq
         omMfquXDc4YjeQCgnsrWt55n64qgt9JUvMipJIj0UtMA/S1gvaLrJWtwS4LG9loE06h8
         dKtxIfO5s5D0PQJJYPQiB6K7Omcs1yx8j82Am0vnOXta2ogTv1XaOPxyMnRcCTS6PmqO
         CcJHBRWHQFZGLak9CyshNLcdxxQ5eAfV9u+Kekz5+qpfU1sHfgaV4KXqIeyrl5ZZBbT2
         H6eqCz158d7r4F/pGnS8wslEBP1tKwzeVqwJKsSLW3FXacGSDH+0DeViH//28MsKHx2N
         aISQ==
X-Gm-Message-State: AE9vXwPbA53GBSD7jTYga751NCgU4TUSLySB3pbKelO5Zt2pCTq62ICmOsSoLfIcGdpKa1XeGCHSFb8+iqirKw==
X-Received: by 10.25.24.91 with SMTP id o88mr8088765lfi.81.1474118457181; Sat,
 17 Sep 2016 06:20:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sat, 17 Sep 2016 06:20:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609171458370.3454@hadrien>
References: <1474097953-4884-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1609171039200.3113@hadrien> <CAOH+1jFz5PxmVvkPh_QrdgrDnMW5Z_Yp9Wd-t7aNT0z1GE_rNg@mail.gmail.com>
 <alpine.DEB.2.10.1609171458370.3454@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sat, 17 Sep 2016 18:50:56 +0530
Message-ID: <CAOH+1jGGuaAqXHoNMK4gJbhA+i638S+Oe1Wnjrdp8gro8hS1NA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Remove extern keyword
 from function declaration
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 6:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 17 Sep 2016, Bhumika Goyal wrote:
>
>> On Sat, Sep 17, 2016 at 2:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Sat, 17 Sep 2016, Bhumika Goyal wrote:
>> >
>> >> Remove extern specifier from function declaration as they have
>> >> it by default. Also move extern declaration from .c files to
>> >> their respective header file 'ks_hostif.h'. Coccinelle was used
>> >
>> > Did you check that the ones in the .c files actually have to be extern?
>> >
>>
>> The extern declaration from file ks_wlan_net.c can be dropped as the
>> function was anyway not getting used in that file.
>> For file ks_hostif.c the extern declarations are dropped and moved to
>> file ks_hostif.h  as the file ks_hostif.h is shared amongst all the
>> files where the those extern functions are defined or used. Am I right
>> in making the change?
>
> I don't actually know what is the standard procedure.  Could one expect
> that the prototype for a function defined in a file foo.c would be in
> foo.h?  But some of your .c files have .h files that are only included in
> the .c file of the same name, so that might not be convenient.  It woudl
> be good to see what other drivers do.
>

I saw some cases in lustre where the function declaration was in
socklnd.h file, definition was in a different file socklnd_lib.c and
usage in another file socklnd_cb.c. So, three files for three
purposes. But both the .c files had the .h file included. Something
like this happens here also so I guess the change won't be a problem?

Thanks,
Bhumika
> julia
>
>>
>> Thanks,
>> Bhumika
>>
>> > julia
>> >
>> >> to remove extern and other changes were done by hand.
>> >> Script:
>> >> @@
>> >> identifier func;
>> >> type T;
>> >> @@
>> >> - extern
>> >> T func(...);
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/ks7010/ks_hostif.c     |  9 ---------
>> >>  drivers/staging/ks7010/ks_hostif.h     | 22 +++++++++++++++-------
>> >>  drivers/staging/ks7010/ks_wlan.h       |  4 ++--
>> >>  drivers/staging/ks7010/ks_wlan_ioctl.h |  6 +++---
>> >>  drivers/staging/ks7010/ks_wlan_net.c   |  4 ----
>> >>  drivers/staging/ks7010/michael_mic.h   |  1 -
>> >>  6 files changed, 20 insertions(+), 26 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
>> >> index deb82ab..eb0192d 100644
>> >> --- a/drivers/staging/ks7010/ks_hostif.c
>> >> +++ b/drivers/staging/ks7010/ks_hostif.c
>> >> @@ -21,15 +21,6 @@
>> >>  /* Include Wireless Extension definition and check version */
>> >>  #include <net/iw_handler.h>  /* New driver API */
>> >>
>> >> -extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
>> >> -                      unsigned long size,
>> >> -                      void (*complete_handler) (void *arg1, void *arg2),
>> >> -                      void *arg1, void *arg2);
>> >> -extern void send_packet_complete(void *, void *);
>> >> -
>> >> -extern void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
>> >> -extern int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
>> >> -
>> >>  /* macro */
>> >>  #define inc_smeqhead(priv) \
>> >>          ( priv->sme_i.qhead = (priv->sme_i.qhead + 1) % SME_EVENT_BUFF_SIZE )
>> >> diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
>> >> index dc806b5b..ffd0174 100644
>> >> --- a/drivers/staging/ks7010/ks_hostif.h
>> >> +++ b/drivers/staging/ks7010/ks_hostif.h
>> >> @@ -616,13 +616,21 @@ enum {
>> >>  #include "ks_wlan.h"
>> >>
>> >>  /* function prototype */
>> >> -extern int hostif_data_request(struct ks_wlan_private *priv,
>> >> -                            struct sk_buff *packet);
>> >> -extern void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
>> >> -                        unsigned int size);
>> >> -extern void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
>> >> -extern int hostif_init(struct ks_wlan_private *priv);
>> >> -extern void hostif_exit(struct ks_wlan_private *priv);
>> >> +int hostif_data_request(struct ks_wlan_private *priv,
>> >> +                      struct sk_buff *packet);
>> >> +void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
>> >> +                  unsigned int size);
>> >> +void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
>> >> +int hostif_init(struct ks_wlan_private *priv);
>> >> +void hostif_exit(struct ks_wlan_private *priv);
>> >> +int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
>> >> +                unsigned long size,
>> >> +                void (*complete_handler) (void *arg1, void *arg2),
>> >> +                void *arg1, void *arg2);
>> >> +void send_packet_complete(void *, void *);
>> >> +
>> >> +void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
>> >> +int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
>> >>
>> >>  static
>> >>  inline int hif_align_size(int size)
>> >> diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
>> >> index f05dc01..693e7d8 100644
>> >> --- a/drivers/staging/ks7010/ks_wlan.h
>> >> +++ b/drivers/staging/ks7010/ks_wlan.h
>> >> @@ -499,7 +499,7 @@ struct ks_wlan_private {
>> >>       uint wakeup_count;      /* for detect wakeup loop */
>> >>  };
>> >>
>> >> -extern int ks_wlan_net_start(struct net_device *dev);
>> >> -extern int ks_wlan_net_stop(struct net_device *dev);
>> >> +int ks_wlan_net_start(struct net_device *dev);
>> >> +int ks_wlan_net_stop(struct net_device *dev);
>> >>
>> >>  #endif /* _KS_WLAN_H */
>> >> diff --git a/drivers/staging/ks7010/ks_wlan_ioctl.h b/drivers/staging/ks7010/ks_wlan_ioctl.h
>> >> index 49369e4..84554b6 100644
>> >> --- a/drivers/staging/ks7010/ks_wlan_ioctl.h
>> >> +++ b/drivers/staging/ks7010/ks_wlan_ioctl.h
>> >> @@ -58,9 +58,9 @@
>> >>  #include "ks_wlan.h"
>> >>  #include <linux/netdevice.h>
>> >>
>> >> -extern int ks_wlan_read_config_file(struct ks_wlan_private *priv);
>> >> -extern int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
>> >> -                                unsigned int commit_flag);
>> >> +int ks_wlan_read_config_file(struct ks_wlan_private *priv);
>> >> +int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
>> >> +                          unsigned int commit_flag);
>> >>
>> >>  #endif /* __KERNEL__ */
>> >>
>> >> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
>> >> index 70cc9be..ee9c8f3 100644
>> >> --- a/drivers/staging/ks7010/ks_wlan_net.c
>> >> +++ b/drivers/staging/ks7010/ks_wlan_net.c
>> >> @@ -69,10 +69,6 @@ static const struct iw_handler_def ks_wlan_handler_def;
>> >>  /*
>> >>   *   function prototypes
>> >>   */
>> >> -extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
>> >> -                      unsigned long size,
>> >> -                      void (*complete_handler) (void *arg1, void *arg2),
>> >> -                      void *arg1, void *arg2);
>> >>  static int ks_wlan_open(struct net_device *dev);
>> >>  static void ks_wlan_tx_timeout(struct net_device *dev);
>> >>  static int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev);
>> >> diff --git a/drivers/staging/ks7010/michael_mic.h b/drivers/staging/ks7010/michael_mic.h
>> >> index c7e4eb2..89f17d5 100644
>> >> --- a/drivers/staging/ks7010/michael_mic.h
>> >> +++ b/drivers/staging/ks7010/michael_mic.h
>> >> @@ -20,7 +20,6 @@ struct michel_mic_t {
>> >>       uint8_t Result[8];
>> >>  };
>> >>
>> >> -extern
>> >>  void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t * Key,
>> >>                       uint8_t * Data, int Len, uint8_t priority,
>> >>                       uint8_t * Result);
>> >> --
>> >> 1.9.1
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474097953-4884-1-git-send-email-bhumirks%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jFz5PxmVvkPh_QrdgrDnMW5Z_Yp9Wd-t7aNT0z1GE_rNg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

