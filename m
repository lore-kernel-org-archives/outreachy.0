X-GM-THRID: 6254547919446212608
X-Received: by 10.66.193.225 with SMTP id hr1mr44097477pac.34.1456468716273;
        Thu, 25 Feb 2016 22:38:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.199 with SMTP id n7ls414253igv.11.canary; Thu, 25 Feb
 2016 22:38:35 -0800 (PST)
X-Received: by 10.107.10.217 with SMTP id 86mr5569459iok.6.1456468715784;
        Thu, 25 Feb 2016 22:38:35 -0800 (PST)
Return-Path: <bounce-md_30481620.56cff2eb.v1-29ba1ed8b7224f9498832983f38e7cd2@mandrillapp.com>
Received: from mail12.wdc04.mandrillapp.com (mail12.wdc04.mandrillapp.com. [205.201.139.12])
        by gmr-mx.google.com with ESMTPS id t198si742433ywe.3.2016.02.25.22.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:38:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cff2eb.v1-29ba1ed8b7224f9498832983f38e7cd2@mandrillapp.com designates 205.201.139.12 as permitted sender) client-ip=205.201.139.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cff2eb.v1-29ba1ed8b7224f9498832983f38e7cd2@mandrillapp.com designates 205.201.139.12 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cff2eb.v1-29ba1ed8b7224f9498832983f38e7cd2@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=tfclDglviOJ40ti5BVcxY9aHOAs=;
 b=lIwMHO77E73d40ueZIFYt4BqCzE5oQN5da97b+WqhwWaYr/mf/oeRiLWzlwKVF4dY+SFKspiXmLy
   i3EYre3WnjU9ytPPXpZuUqiRGmrxptF4yRiVNrOVxcdKG8JkqLpn1roItOgM0Su2DMkt5wKMi/H3
   bMHMdnlOQX6z74rG3TY=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=SAIz/n5tDeVbZSWwssMHzCc4H48TenC6p3SWtAIXg36hU8DXjZuCOGv2aS07j76oCPPwqcVI3SoF
   sZ+geO0+yPZ2V4mM6AcQqevQ03VECfwq5HpcvQNQK3oprHk4gSmV44e0gxvcP0ikIVilUflu1l9p
   oM4UTaDzbP7jyAFMfuA=;
Received: from pmta05.wdc01.mailchimp.com (127.0.0.1) by mail12.wdc04.mandrillapp.com id hpvpem1jvjgo for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:38:35 +0000 (envelope-from <bounce-md_30481620.56cff2eb.v1-29ba1ed8b7224f9498832983f38e7cd2@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456468715; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=M5Jqrmj66wQsZNlqqyaJskQTWgnQsUJMlN1c/dZhjWU=; 
 b=T6QTbmY93ygkZI3QGoNgKyJ2mselY+d6h1Bj9iO2PMRVdpbUKQjOyCIQ0H7gsSP8m2+OJL
 at07fT+/zMLU73AZ7tlBnJF0UNQwDLQDj+gQPaA/5KUC82sm3CZhDjr9tZqp7czNJvOwGu0X
 oR0NltgJ62M53Y8XrBOyyLUWAqJGw=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Add space around '+'
Return-Path: <bounce-md_30481620.56cff2eb.v1-29ba1ed8b7224f9498832983f38e7cd2@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 29ba1ed8b7224f9498832983f38e7cd2; Fri, 26 Feb 2016 06:38:35 +0000
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226063834.GA19753@kroah.com>
References: <1456250408-19142-1-git-send-email-dilekuzulmez@gmail.com>
In-Reply-To: <1456250408-19142-1-git-send-email-dilekuzulmez@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.29ba1ed8b7224f9498832983f38e7cd2
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:38:35 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Tue, Feb 23, 2016 at 08:00:08PM +0200, Dilek Uzulmez wrote:
> Add space around operator '+'. Problem found using checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-defines.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
> index f92e0c4..d683348 100644
> --- a/drivers/staging/octeon/ethernet-defines.h
> +++ b/drivers/staging/octeon/ethernet-defines.h
> @@ -40,7 +40,7 @@
>  #define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(uint32_t))
>  #define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(uint32_t))
>  
> -#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS+1)
> +#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)

Patch does not apply to my tree :(

