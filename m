X-GM-THRID: 6620561568029474816
X-Received: by 2002:a19:ed08:: with SMTP id y8mr1975158lfy.10.1541487854922;
        Mon, 05 Nov 2018 23:04:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4145:: with SMTP id c5-v6ls2002857lfi.13.gmail; Mon, 05
 Nov 2018 23:04:14 -0800 (PST)
X-Google-Smtp-Source: AJdET5e8BZN7lCUoTNgNb53GPBkLnb/1e27UJsItyTgRDzyvMBOE1q5xMAQWwwwlgQsY1nclEA2w
X-Received: by 2002:a19:a28f:: with SMTP id l137-v6mr1982845lfe.14.1541487854020;
        Mon, 05 Nov 2018 23:04:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541487853; cv=none;
        d=google.com; s=arc-20160816;
        b=w8IDa5eNVFsn0x2vip/6LgTcNOXFPAleH6vkgTtvcVyG5T6EG7PwbTBJ5KfL3rL7B8
         Fakf9UBI4kvpOnRaWdiQJ+2kLJY29BzudKzsstw0WCOoVa9efrH3Jm8zeVwVYsDCsrKC
         cUaAr9V+GEbvDQmK6pckVpqdXF2Y2Gsij5qe3QQLPYPGjEhgGhIrkaLM6Qen0bRfwsYx
         aT3KY+gc5j/+WUH7Hm6RiPQKLXKgUHEAvWjiCIRY9/VHNJoXtrlIVdG5F0q17vdB/h38
         xDF8Cq2RFHxjJGqnf9Z41/Q0Ck2z1ljQOzG4NXqKDZDcO4jl8u7qB48CNz7SdltqhGtF
         w4ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=aapWX8DW2nm5QkxSPIyNorDg1nBv7+avVybr5iXee0Q=;
        b=hj5VfzlaivJoxTBEYld9S0N77xMyqYMcnkcFo0+9L/haYM8/o6DdIssdYhNwnhtWkD
         RuoZ9xXF0M6XlhRgiUZdn2AzfNhufng0Sb5ZvopeZyMMTMSRJY+bmLBpeWDIPG9VHtJZ
         Afy1HmhQPyCAF3xpbo/3FcgSHkjTyDOD2b9Fx2K9zITf8OvMDdZ6/uqsRC5N8gWmSFUU
         LTzWGXStvcINPrF3iiPWdNfla9c6A1DYWFYj9U6nsHKO9ixDY/dNalEznShbRVFDO7vY
         Wbev3dqso06B7mZMQNZTF33yeFQqJA5sIstjApDlpLRXBhMCN8w4sMvlA0mEsyVMjYeq
         GuSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t5-v6si322863lje.3.2018.11.05.23.04.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 23:04:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,470,1534802400"; 
   d="scan'208";a="284456875"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Nov 2018 08:04:12 +0100
Date: Tue, 6 Nov 2018 08:04:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: davinci: remove FSF mail
 address from copyright
In-Reply-To: <cad49c8a7691fa02cb0143d00b7a5bbe94c588d7.1541469543.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811060803500.2437@hadrien>
References: <cover.1541469543.git.code@wizofe.uk> <cad49c8a7691fa02cb0143d00b7a5bbe94c588d7.1541469543.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Nov 2018, Ioannis Valasakis wrote:

> Remove the mail address from the copyright notice as it may change in
> the future. Reported by checkpatch.

It looks like this results in two consecutive blank lines, which doesn't
seem desirable.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_isif.c         | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_isif.h         | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 3 ---
>  drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 3 ---
>  drivers/staging/media/davinci_vpfe/vpfe.h               | 3 ---
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 3 ---
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 3 ---
>  drivers/staging/media/davinci_vpfe/vpfe_video.c         | 3 ---
>  drivers/staging/media/davinci_vpfe/vpfe_video.h         | 3 ---
>  18 files changed, 54 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> index 69594bb70a2b..6d2570a63529 100644
> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 85151113ca91..0c896e10edc1 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> index 39bd29a3aa89..68a9e3692f9a 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> index 76d1d0fe982c..d1d97879c0bb 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> index 84c152611712..ce01ce2cb28c 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index 24bb1e93af23..19e3026ed8d2 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index a27b76fb593c..14f4608645f3 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
> index c04d0535cbc5..1c4960720c63 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index 728a443ea60d..54da444e8a69 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
> index 44ec7249ccfd..389412a041fe 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
> index fafdc693a9bd..5e9867cea249 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> index ca1ddae50c22..ca64f112a5b9 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> index 74f359a96160..bec0f9587d3f 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
> index 06dd68ef3712..c91ad025f2d2 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe.h
> +++ b/drivers/staging/media/davinci_vpfe/vpfe.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> index da2b5dcbd269..7e9b246f6f05 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
> index 3df319cde290..2de8c2d655c6 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> index 204bc238d67b..bf0620186a84 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
> index c6b9befff401..e596101ab260 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
> @@ -11,9 +11,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
>   *
>   * Contributors:
>   *      Manjunath Hadli <manjunath.hadli@ti.com>
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cad49c8a7691fa02cb0143d00b7a5bbe94c588d7.1541469543.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

