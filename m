X-GM-THRID: 6339043757720076288
X-Received: by 10.129.98.70 with SMTP id w67mr3227310ywb.24.1476087725907;
        Mon, 10 Oct 2016 01:22:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.162 with SMTP id q31ls9342040ota.44.gmail; Mon, 10 Oct
 2016 01:22:05 -0700 (PDT)
X-Received: by 10.157.9.182 with SMTP id q51mr8334226otd.47.1476087725575;
        Mon, 10 Oct 2016 01:22:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si8170528pab.2.2016.10.10.01.22.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 01:22:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EEB3B892;
	Mon, 10 Oct 2016 08:22:04 +0000 (UTC)
Date: Mon, 10 Oct 2016 10:22:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH v2] staging: vt6655: Removes the FSF mailing address.
Message-ID: <20161010082213.GA11622@kroah.com>
References: <20161009155223.GA14800@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009155223.GA14800@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 09:22:23PM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch issue by removing the Free Software
> Foundation's mailing address from the sample GPL notice. Because the FSF
> has changed address in the past, and may change again. Linux already
> includes a copy of the GPL.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  Changes in v2:
>  -Changelog comments in 72 columns.
>  -All the files with the same issue in vt6655 has been fixed.
>  drivers/staging/vt6655/baseband.c    | 4 +---
>  drivers/staging/vt6655/baseband.h    | 4 +---
>  drivers/staging/vt6655/card.c        | 3 +--
>  drivers/staging/vt6655/card.h        | 3 +--
>  drivers/staging/vt6655/channel.c     | 3 +--
>  drivers/staging/vt6655/channel.h     | 3 +--
>  drivers/staging/vt6655/desc.h        | 3 +--
>  drivers/staging/vt6655/device.h      | 3 +--
>  drivers/staging/vt6655/device_cfg.h  | 3 +--
>  drivers/staging/vt6655/device_main.c | 3 +--
>  drivers/staging/vt6655/dpc.c         | 3 +--
>  drivers/staging/vt6655/dpc.h         | 3 +--
>  drivers/staging/vt6655/key.c         | 3 +--
>  drivers/staging/vt6655/key.h         | 4 +---
>  drivers/staging/vt6655/mac.c         | 4 +---
>  drivers/staging/vt6655/mac.h         | 4 +---
>  drivers/staging/vt6655/power.c       | 4 +---
>  drivers/staging/vt6655/power.h       | 3 +--
>  drivers/staging/vt6655/rf.c          | 4 +---
>  drivers/staging/vt6655/rf.h          | 4 +---
>  drivers/staging/vt6655/rxtx.c        | 3 +--
>  drivers/staging/vt6655/rxtx.h        | 3 +--
>  drivers/staging/vt6655/srom.c        | 3 +--
>  drivers/staging/vt6655/srom.h        | 4 +---
>  drivers/staging/vt6655/tmacro.h      | 3 +--
>  drivers/staging/vt6655/upc.h         | 4 +---
>  26 files changed, 26 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 4bc9b6c..c5a3af3 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -13,9 +13,7 @@
>   * GNU General Public License for more details.
>   *
>   * You should have received a copy of the GNU General Public License along
> - * with this program; if not, write to the Free Software Foundation, Inc.,
> - * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> - *
> + * with this program;

The ";" does not make any sense here anymore, right?  Just delete the
whole paragraph, there is a copy of the GPL in the kernel source tree,
so it's not an issue.

thanks,

greg k-h

