X-GM-THRID: 6397085894366461952
X-Received: by 10.157.82.35 with SMTP id e35mr15421470oth.127.1489443844103;
        Mon, 13 Mar 2017 15:24:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls4246078iof.27.gmail; Mon, 13 Mar
 2017 15:24:03 -0700 (PDT)
X-Received: by 10.107.7.16 with SMTP id 16mr10197543ioh.15.1489443843327;
        Mon, 13 Mar 2017 15:24:03 -0700 (PDT)
Received: by 10.55.103.195 with SMTP id b186msqkc;
        Mon, 13 Mar 2017 14:31:53 -0700 (PDT)
X-Received: by 10.46.9.141 with SMTP id 135mr5838651ljj.19.1489440712876;
        Mon, 13 Mar 2017 14:31:52 -0700 (PDT)
Return-Path: <daniele@grinta.net>
Received: from zed.grinta.net (zed.grinta.net. [109.74.203.128])
        by gmr-mx.google.com with ESMTP id l138si850544wmg.0.2017.03.13.14.31.51
        for <outreachy-kernel@googlegroups.com>;
        Mon, 13 Mar 2017 14:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniele@grinta.net designates 109.74.203.128 as permitted sender) client-ip=109.74.203.128;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@grinta.net;
       spf=pass (google.com: domain of daniele@grinta.net designates 109.74.203.128 as permitted sender) smtp.mailfrom=daniele@grinta.net
Received: from 688dnmac.campus.nist.gov (688msmac.bw.nist.gov [132.163.81.39])
	(Authenticated sender: daniele)
	by zed.grinta.net (Postfix) with ESMTPSA id 81297E3F14;
	Mon, 13 Mar 2017 21:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grinta.net; s=mail;
	t=1489440711; bh=OWhApwlic+/VfcFxGe3HPM1WwP6v8/DW2yXDS6A3yUQ=;
	h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
	b=GjSctmTOjVQ7myAiSufXGwF9Hys9cndJSMipDr36EpxeTj+uLFEIN4cyXNLbMDfAv
	 hFomBSHcpdaRtSm25B2TZeChTTHqrEeZtqY8mVOeYjOy+P01ams4AahdMp4hgDkEkg
	 nrJffff+jh9KlyYcY7BO5DPO4JjubsaPAjn15ZPM=
Subject: Re: [PATCH v2 1/2] staging: speakup: Added blank line after
 function/struct/union/enum declarations
To: Arushi Singhal <arushisinghal19971997@gmail.com>, w.d.hubbs@gmail.com
References: <20170313204018.24601-1-arushisinghal19971997@gmail.com>
 <20170313204018.24601-2-arushisinghal19971997@gmail.com>
Cc: chris@the-brannons.com, outreachy-kernel@googlegroups.com,
 kirk@reisers.ca, samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
From: Daniele Nicolodi <daniele@grinta.net>
Message-ID: <9240fe49-0bb3-c439-188a-5a0b6ca24f02@grinta.net>
Date: Mon, 13 Mar 2017 15:31:45 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170313204018.24601-2-arushisinghal19971997@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello,

On 3/13/17 2:40 PM, Arushi Singhal wrote:
> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.

I haven't seen this pointed out by others before: starting a commit
message with "This patch..." is redundant (it is a commit message, thus
what it describes is surely a patch) and most times leads to bad style
commit messages.

In this case the commit message can simply be:

Add a blank line after enum and struct declarations.

or

Ensure that enum and struct declarations are followed by a blank line.

Cheers,
Daniele


> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - change the subject to make it more relevant.
> 
>  drivers/staging/speakup/main.c         | 1 +
>  drivers/staging/speakup/serialio.c     | 1 +
>  drivers/staging/speakup/speakup_dtlk.c | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 6786cfab7460..4b750ec8cd59 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -108,6 +108,7 @@ enum {
>  	CT_Window,
>  	CT_Max
>  };
> +
>  #define read_all_mode CT_Max
>  
>  static struct tty_struct *tty;
> diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
> index aade52ee15a0..d51e382cb835 100644
> --- a/drivers/staging/speakup/serialio.c
> +++ b/drivers/staging/speakup/serialio.c
> @@ -21,6 +21,7 @@ static void start_serial_interrupt(int irq);
>  static const struct old_serial_port rs_table[] = {
>  	SERIAL_PORT_DFNS
>  };
> +
>  static const struct old_serial_port *serstate;
>  static int timeouts;
>  
> diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> index eede2d82183a..c0b2208aa8a7 100644
> --- a/drivers/staging/speakup/speakup_dtlk.c
> +++ b/drivers/staging/speakup/speakup_dtlk.c
> @@ -43,6 +43,7 @@ static int port_forced;
>  static unsigned int synth_portlist[] = {
>  		 0x25e, 0x29e, 0x2de, 0x31e, 0x35e, 0x39e, 0
>  };
> +
>  static u_char synth_status;
>  
>  static struct var_t vars[] = {
> 


