X-GM-THRID: 6664067951305424896
X-Received: by 2002:a50:b361:: with SMTP id r30mr1681871edd.8.1551599793414;
        Sat, 02 Mar 2019 23:56:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:32c1:: with SMTP id k1ls2767200ejk.9.gmail; Sat, 02
 Mar 2019 23:56:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqyySvptcF955b2FB5BURLFG0BJNRqmneJLf1eMsminhP86hcA+ihcEsRtq1tIopszTmzelY
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr1400570eja.10.1551599792610;
        Sat, 02 Mar 2019 23:56:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551599792; cv=none;
        d=google.com; s=arc-20160816;
        b=tyY8lC9ZDslaevJ/aR6yQoiTdu4UdkJvEtUMe4oXonkcR0EaVzPrMlInKe8ui/KBPe
         kaslKln4M4sVHXQmaazbpH3jPRmvOPIPtArLjMZ/3rpFrZEh6AHpw8CXOpLI1+3R8p9j
         uKVRrirvZ5Dl2zY2irPnYIJZF6NCV7Fb/vGfArjoyoBNSUIREnkGYV8chkqHDOhsyNLY
         unBgJcUMSQrzs8qQjzmDAgAqo7Ps7QsWcBwn1yjvlgsN3S0ma1wkzPyumv6iKhqeJprz
         GFiSQYyksBLgj2/oQkn0s71ORyf0dIPlLIY+5iv/vZ4vQuwmgQyjcX+xvWieZOrPPCFh
         rtHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7WIA0g1igDT5QwK0StNG21KulGGpThuZ9JY1uMPKnbk=;
        b=i3/SqC4DDlWffVmDVNTutDWC84WHVCNrU4JJQ4ygU035JyUDwmmhztXC3YOHGAGDdZ
         V0VbAtNUiUGMtbj0QXhr6HXY1ia3mesdOOXM8EH+JJNSSgMEWcZgurq+wQED3z7w9/8J
         C/6XgGx+02NNwqL3b4wPacaIh8t58n+085TYRYA+YjxteV1rRzUQyIw5CZp+kUwjaAp9
         QDEYm5hOZwFoemEKJ2oYPBNopJqFGJNyWWqKxgmzlraj0lhm4iVb9mLh5TGFsXQVfl95
         gNmWQbWsmAdcywEsJYTwA29zw6rvbjC4RysAAJHHdHPlmzcTdwvVFIwYtw4ON3Qq99my
         Yunw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h12si96282edh.4.2019.03.02.23.56.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 23:56:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="371659832"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 08:56:16 +0100
Date: Sun, 3 Mar 2019 08:56:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: pi433: Fix line over 80
 characters issue
In-Reply-To: <1551599208-3301-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903030853110.3207@hadrien>
References: <1551599208-3301-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Debleena Sen wrote:

> This patch re-formats the code to remove the checkpatch.pl warning(on
> line no. 566):
> WARNING: line over 80 characters

The log message should be in the imperative.  So it should start with
Reformat.  However, reformat is again quite vague.  Something like "Add a
newline" would be better.

You don't need to give the line number.  That is not an information that
is immediately meaningful, ie no one remembers what is on line 156.  To
find out what is on that line, they will have to look at the change, and
at that time they can see the line number as well.

On the other hand, if you ever feel obliged to put something in
parentheses, please put a space in front of the (.  Otherwise it looks
like a function call.

julia

>
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/pi433/rf69.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index e19b9ce..0c189a7 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
>  {
>  	switch (flag) {
>  	case mode_switch_completed:
> -		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
> +		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
> +			MASK_IRQFLAGS1_MODE_READY);
>  	case ready_to_receive:
>  		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
>  	case ready_to_send:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551599208-3301-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

