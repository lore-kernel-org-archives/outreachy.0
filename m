X-GM-THRID: 6388169342040670208
X-Received: by 10.25.80.83 with SMTP id z19mr963881lfj.8.1487363140258;
        Fri, 17 Feb 2017 12:25:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.215 with SMTP id k84ls427721wmi.25.canary-gmail; Fri, 17
 Feb 2017 12:25:39 -0800 (PST)
X-Received: by 10.28.59.66 with SMTP id i63mr164756wma.21.1487363139527;
        Fri, 17 Feb 2017 12:25:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si178085wmn.2.2017.02.17.12.25.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 12:25:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,173,1484002800"; 
   d="scan'208";a="213780665"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 21:25:38 +0100
Date: Fri, 17 Feb 2017 21:25:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/4] staging: rtl8712: Removes the
 FSF mailing address.
In-Reply-To: <58a7562a.418f630a.5902a.3267@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702172125160.2118@hadrien>
References: <cover.1487359493.git.varshar186@gmail.com> <58a7562a.418f630a.5902a.3267@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Varsha Rao wrote:

> This patch fixes the checkpatch issue by removing the Free Software
> Foundation's mailing address from the sample GPL notice. Because the FSF has
> changed address in the past, and may change again. Linux already includes a
> copy of the GPL.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8712/os_intfs.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 5638fb6..f5526a1 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -13,10 +13,6 @@
>   * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
>   * more details.
>   *
> - * You should have received a copy of the GNU General Public License along with
> - * this program; if not, write to the Free Software Foundation, Inc.,
> - * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
> - *
>   * Modifications for inclusion into the Linux staging tree are
>   * Copyright(c) 2010 Larry Finger. All rights reserved.
>   *
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58a7562a.418f630a.5902a.3267%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

