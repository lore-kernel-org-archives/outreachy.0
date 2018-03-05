X-GM-THRID: 6529515465109143552
X-Received: by 10.28.158.193 with SMTP id h184mr1156240wme.22.1520275049298;
        Mon, 05 Mar 2018 10:37:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.195 with SMTP id 186ls1633030wmm.8.canary-gmail; Mon, 05
 Mar 2018 10:37:28 -0800 (PST)
X-Google-Smtp-Source: AG47ELtBeFxdVEmb70dkhdGEcWpZxe2M0juZDAT5+26mg+o/bdGi6OPmKecU7HWJ2mj+NO3MIop6
X-Received: by 10.28.87.5 with SMTP id l5mr1189489wmb.23.1520275048052;
        Mon, 05 Mar 2018 10:37:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520275048; cv=none;
        d=google.com; s=arc-20160816;
        b=Eri8/x/wiTdpG8e1JloQrM9KtugJNc1Tfj3zohxE2bPgajSs/vs1oItixswFwk/7q4
         2lqJniE1qaL7je13mUHrhwaXPMahAXeLtGjk+J2L9n31i4EueNXb1/5EvDonV9sOYrHq
         5cbLIdKyCjJfddwQktoAgtfRPQYlBlRKt3MStGdvFNA/7MzdQPJlsqSBPoGyc2fc+sms
         /H7+i6BjpYyhENsCYZdLqRQqvrRXiFcVQNbqu9yhkMkga6G1Tbl9djPBiwoNg3xcMQUK
         oWBO0yumq+jSL0ZKN5NkXv29bK/6EHP5yze/8ae+X/k9VQsT23UfcOPJzKcxW/YT6wIt
         vZLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=OHcKGRNzm59bFOx8Q6zvG37tA9Ledcphwuz3ncws3SY=;
        b=qOvy1bay6F9PKvfrR+jOD82KTAZsIzs8R3y3lrN+6/uC6AOGvXIC1b+lF0H/eJ7gwq
         I9HhDulm9xCieZb4pwyrc/Ie8uvkNxzSVGhTqyj3j7Vk454cJxP5f4LKeip7EyZf2k2b
         8JfS98m11OZCBmyorEIk/bt1sW2SKaZprcv+Fxjyh+0qRPP8ZKin/etd3pdVsVB8xZhS
         QM45NcOqDjmSCi1mm+iH41yZqUunqa/tpcrT2fUcUTxBUvLFbvtnqceSp2QyDoV1pWa4
         Wd4q9Z5yj2Lnhd8dl/Jpxhy4lL47vdzKGRFUl8pUsQ7ksIqhcW8NoVN+peCnsv8efudu
         03ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id j199si231740wmj.1.2018.03.05.10.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 10:37:27 -0800 (PST)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 4A9C2841C;
	Mon,  5 Mar 2018 19:37:27 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cAGyG1cI9R1N; Mon,  5 Mar 2018 19:37:26 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 81123228E;
	Mon,  5 Mar 2018 19:37:26 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1esuzF-00015A-7w; Mon, 05 Mar 2018 19:37:25 +0100
Date: Mon, 5 Mar 2018 19:37:25 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: gregkh@linuxfoundation.org, kirk@reisers.ca, chris@the-brannons.com,
	w.d.hubbs@gmail.com, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: match alignment with open parenthesis
Message-ID: <20180305183725.5a3sx6sxgr3bm2wy@var.youpi.perso.aquilenet.fr>
References: <1520271253-53146-1-git-send-email-santhameena13@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1520271253-53146-1-git-send-email-santhameena13@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Santha Meena Ramamoorthy, on lun. 05 mars 2018 09:34:13 -0800, wrote:
> Match alignment with the open parenthesis to conform to the Linux kernel
> coding style. Issue found using checkpatch.
> 
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/main.c           | 2 +-
>  drivers/staging/speakup/speakup_decpc.c  | 6 +++---
>  drivers/staging/speakup/speakup_dectlk.c | 4 ++--
>  drivers/staging/speakup/speakup_keypc.c  | 4 ++--
>  drivers/staging/speakup/spk_ttyio.c      | 2 +-
>  5 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index d7cdec3..af30b70 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -417,7 +417,7 @@ static void announce_edge(struct vc_data *vc, int msg_id)
>  		bleep(spk_y);
>  	if ((spk_bleeps & 2) && (msg_id < edge_quiet))
>  		synth_printf("%s\n",
> -			spk_msg_get(MSG_EDGE_MSGS_START + msg_id - 1));
> +			     spk_msg_get(MSG_EDGE_MSGS_START + msg_id - 1));
>  }
>  
>  static void speak_char(u16 ch)
> diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> index 303f393..6649309 100644
> --- a/drivers/staging/speakup/speakup_decpc.c
> +++ b/drivers/staging/speakup/speakup_decpc.c
> @@ -349,7 +349,7 @@ static int testkernel(void)
>  		return 0;
>  	else if (dt_stat == 0x0dec)
>  		pr_warn("dec_pc at 0x%x, software not loaded\n",
> -				speakup_info.port_tts);
> +			speakup_info.port_tts);
>  	status = -3;
>  oops:	synth_release_region(speakup_info.port_tts, SYNTH_IO_EXTENT);
>  	speakup_info.port_tts = 0;
> @@ -412,11 +412,11 @@ static void do_catch_up(struct spk_synth *synth)
>  				if (!in_escape)
>  					dt_sendchar(PROCSPEECH);
>  				spin_lock_irqsave(&speakup_info.spinlock,
> -							flags);
> +						  flags);
>  				jiffy_delta_val = jiffy_delta->u.n.value;
>  				delay_time_val = delay_time->u.n.value;
>  				spin_unlock_irqrestore(&speakup_info.spinlock,
> -							flags);
> +						       flags);
>  				schedule_timeout(msecs_to_jiffies
>  						 (delay_time_val));
>  				jiff_max = jiffies + jiffy_delta_val;
> diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
> index 2ea22a2..a144f28 100644
> --- a/drivers/staging/speakup/speakup_dectlk.c
> +++ b/drivers/staging/speakup/speakup_dectlk.c
> @@ -262,11 +262,11 @@ static void do_catch_up(struct spk_synth *synth)
>  				if (!in_escape)
>  					synth->io_ops->synth_out(synth, PROCSPEECH);
>  				spin_lock_irqsave(&speakup_info.spinlock,
> -						flags);
> +						  flags);
>  				jiffy_delta_val = jiffy_delta->u.n.value;
>  				delay_time_val = delay_time->u.n.value;
>  				spin_unlock_irqrestore(&speakup_info.spinlock,
> -						flags);
> +						       flags);
>  				schedule_timeout(msecs_to_jiffies
>  						 (delay_time_val));
>  				jiff_max = jiffies + jiffy_delta_val;
> diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
> index de76183..3901734 100644
> --- a/drivers/staging/speakup/speakup_keypc.c
> +++ b/drivers/staging/speakup/speakup_keypc.c
> @@ -260,7 +260,7 @@ static int synth_probe(struct spk_synth *synth)
>  	if (port_forced) {
>  		synth_port = port_forced;
>  		pr_info("probe forced to %x by kernel command line\n",
> -				synth_port);
> +			synth_port);
>  		if (synth_request_region(synth_port-1, SYNTH_IO_EXTENT)) {
>  			pr_warn("sorry, port already reserved\n");
>  			return -EBUSY;
> @@ -269,7 +269,7 @@ static int synth_probe(struct spk_synth *synth)
>  	} else {
>  		for (i = 0; synth_portlist[i]; i++) {
>  			if (synth_request_region(synth_portlist[i],
> -						SYNTH_IO_EXTENT)) {
> +						 SYNTH_IO_EXTENT)) {
>  				pr_warn
>  				    ("request_region: failed with 0x%x, %d\n",
>  				     synth_portlist[i], SYNTH_IO_EXTENT);
> diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> index 5aa3ffa..3119402 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -71,7 +71,7 @@ static void spk_ttyio_ldisc_close(struct tty_struct *tty)
>  }
>  
>  static int spk_ttyio_receive_buf2(struct tty_struct *tty,
> -		const unsigned char *cp, char *fp, int count)
> +				  const unsigned char *cp, char *fp, int count)
>  {
>  	struct spk_ldisc_data *ldisc_data = tty->disc_data;
>  
> -- 
> 2.7.4
> 

-- 
Samuel
<O> Ça peut être une madeleine à sous munitions (avec des composants,
par exemple)
 -+- #runtime -+-

