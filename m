X-GM-THRID: 6536503854152810496
X-Received: by 10.28.206.74 with SMTP id e71mr396188wmg.21.1521899933727;
        Sat, 24 Mar 2018 06:58:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.156.193 with SMTP id h1ls449729wre.3.gmail; Sat, 24 Mar
 2018 06:58:52 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuBFA1diZltbFredwohAqT9NgJaWMtrxM/eIljPD7OHWsGUD7VTH3rXhVyh5Wi8gbu7LCbt
X-Received: by 10.223.139.198 with SMTP id w6mr2698750wra.27.1521899932694;
        Sat, 24 Mar 2018 06:58:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521899932; cv=none;
        d=google.com; s=arc-20160816;
        b=wYB40kejKa7gsPnq5+bd7gngD11G2aMNEtozQ0FMMD8OGN4ttS5LIaJCcz50G1pj4v
         M02G6AzI/DNIAgU+fA9iB9nvz+fIKdfE8haiwIT6qnZvvEiHIyh8JS3b/i6NfuzSzUSC
         SYagaAIVmP+obm4py/I4/w06HiZZbby6Fb9CSBiw2+vNiwEsEzyA0IswNkaFHoxw9zwW
         RqfGA3BtUm3wO3OBYsCYiibdMMedE87kUF3pAx6XvTOSy4s7bPLtwoo+8J0PvUmowA+r
         QffAOnwF1C1SvdDEkBKUjpe7Y915xKYvc9gNBtc4scBUvyhHWwCfxU+xovHFvljjpqC+
         o+ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=K0T65NwxcEwO+Xm2kQlEDTjn5fBW/ktyffDtpp0yM3Y=;
        b=1GaStEDoXpxXsP4u1RP7IESu++TM1wiNhYWJKSIIpTNiTQHMX35smsUATMqvvqUSsX
         B1faTTdgGGRMQIQl0YbrvPZ8cJle8ORe/9HCSunE/jyQeteEw5MUaisNcNbmAeEl5zMZ
         x3pODjuS2PyvePOxpnbOsQX7rvZLZHO48UISvpfaud4fvB0oeYUm2ffcZ/o+QSWG3mFA
         ejWgwUpXu2euXuDjiQfPjaB+VXfYeXfO9uG4jncb9CGOUTeIwy2uaplkKt5Htp7qQPhP
         ZrWYf82PYTdndTBFCUqnaT2RaVYZzCy1al5U7uen5Jw9IRSY5LQP+hw0yYlqGK2zTex2
         H+3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 51si403913wrw.0.2018.03.24.06.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:58:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="319731847"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 14:58:51 +0100
Date: Sat, 24 Mar 2018 09:58:49 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, mchehab@kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: Remove address of
 Free Software Foundation
In-Reply-To: <1521898517-29189-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803240957550.2323@hadrien>
References: <1521898517-29189-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Each patch has to have a different subject line.  These patches are quite
trivial, ie they don't affect the code so they can't introduce bugs, so
you could probably just merge them all into one.

julia

On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Remove address of Free Software Foundation in case it changes. Issue
> found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> index d81b29e..2b8d52c 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> @@ -12,7 +12,7 @@
>   *
>   * You should have received a copy of the GNU General Public License
>   * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
> + * Foundation, Inc.
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521898517-29189-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

