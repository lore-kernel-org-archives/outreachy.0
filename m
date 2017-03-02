X-GM-THRID: 6392720768587792384
X-Received: by 10.25.204.21 with SMTP id c21mr1522607lfg.19.1488450787838;
        Thu, 02 Mar 2017 02:33:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls632033lja.0.gmail; Thu, 02 Mar 2017
 02:33:06 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr1774746ljb.28.1488450786420;
        Thu, 02 Mar 2017 02:33:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si111273wmd.0.2017.03.02.02.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 02:33:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,230,1484002800"; 
   d="scan'208";a="215293472"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 11:33:05 +0100
Date: Thu, 2 Mar 2017 11:32:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, Chris Brannon <chris@the-brannons.com>, 
    Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Alignment match
 open parenthesis
In-Reply-To: <20170302021841.GA1812@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703021131220.3414@hadrien>
References: <20170302021841.GA1812@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Arushi Singhal wrote:

> Fix checkpatch issues: "CHECK: Alignment should match open parenthesis"
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c     |  2 +-
>  drivers/staging/speakup/kobjects.c | 38 +++++++++++++++++++-------------------
>  2 files changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 11f1418b4006..ac1ebead3c3f 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -607,7 +607,7 @@ void spk_reset_msg_group(struct msg_group_t *group)
>  void spk_initialize_msgs(void)
>  {
>  	memcpy(speakup_msgs, speakup_default_msgs,
> -		sizeof(speakup_default_msgs));
> +	       sizeof(speakup_default_msgs));
>  }
>
>  /* Free user-supplied strings when module is unloaded: */
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index fdd6e4b33951..61656c7c2dc9 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -79,7 +79,7 @@ static ssize_t chars_chartab_show(struct kobject *kobj,
>   * character descriptions or chartab entries.
>   */
>  static void report_char_chartab_status(int reset, int received, int used,
> -	int rejected, int do_characters)
> +					int rejected, int do_characters)
>  {
>  	static char const *object_type[] = {
>  		"character class entries",
> @@ -92,7 +92,7 @@ static void report_char_chartab_status(int reset, int received, int used,
>  		pr_info("%s reset to defaults\n", object_type[do_characters]);
>  	} else if (received) {
>  		len = snprintf(buf, sizeof(buf),
> -				" updated %d of %d %s\n",
> +			       " updated %d of %d %s\n",
>  				used, received, object_type[do_characters]);

This line should be lined up too.

julia

