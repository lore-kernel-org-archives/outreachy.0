X-GM-THRID: 6401904380146089984
X-Received: by 10.25.193.213 with SMTP id r204mr2382376lff.24.1490560862875;
        Sun, 26 Mar 2017 13:41:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.207.206 with SMTP id f197ls1035714wmg.22.gmail; Sun, 26 Mar
 2017 13:41:02 -0700 (PDT)
X-Received: by 10.28.146.72 with SMTP id u69mr282748wmd.6.1490560862094;
        Sun, 26 Mar 2017 13:41:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p144si826706wme.2.2017.03.26.13.41.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 13:41:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,228,1486422000"; 
   d="scan'208";a="218100049"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2017 22:41:01 +0200
Date: Sun, 26 Mar 2017 22:41:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Hannah Suarez <azure@suarez.id.au>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1 of 7] Delete the FSF mailing address
 paragraph.
In-Reply-To: <20170326201832.GA10667@hcs-desktop>
Message-ID: <alpine.DEB.2.20.1703262234280.2082@hadrien>
References: <20170326201832.GA10667@hcs-desktop>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is not correct.

The series number should be written as eg [PATCH 1/7].  Afterwards, there
should be some information about the affected files before the topic of
the patch.  You can find out how to make a proper subject line for a given
file(s) using git log --oneline.  For example, git long --oneline
drivers/staging/gs_fpgaboot/io.c gives:

686855e Staging: gs_fpgaboot: remove blank line in io.c
f37e90e staging: gs_fpgaboot: io.c: Remove unused function
06a3fab staging: gs_fpgaboot: remove checks for CONFIG_B4860G100
ba660d2 staging: gs_fpgaboot: remove unnecessary return statements
5535c4d staging: gs_fpgaboot: Fixed code style issues

So a patch on this file should have a subject line that starts with
"staging: gs_fpgaboot: ".  Note that there is a space after each colon.
Don't try to make up the subject line yourself.  Different subsystems have
different conventions, and there is no deterministic algorithm.

Typically the files that you put together in a single patch should be
associated with similar subject lines and should go to the same set of
people.  This particular patch seems to cover a random mixture of files,
while the others in the series seem a bit more coherent.

julia

On Sun, 26 Mar 2017, Hannah Suarez wrote:

> Delete the FSF mailing address paragraph on the event of an address
> change.
>
> Linux already includes a copy of the GPL.
>
> Signed-off-by: Hannah Suarez <azure@suarez.id.au>
> ---
>  drivers/staging/gs_fpgaboot/io.c        | 4 ----
>  drivers/staging/gs_fpgaboot/io.h        | 4 ----
>  drivers/staging/media/cxd2099/cxd2099.c | 6 ------
>  drivers/staging/media/cxd2099/cxd2099.h | 6 ------
>  drivers/staging/media/lirc/lirc_sasem.c | 3 ---
>  drivers/staging/media/lirc/lirc_sir.c   | 5 -----
>  drivers/staging/media/lirc/lirc_zilog.c | 4 ----
>  drivers/staging/nvec/nvec-keytable.h    | 3 ---
>  drivers/staging/rtl8192e/license        | 4 ----
>  drivers/staging/rtl8712/mlme_linux.c    | 4 ----
>  10 files changed, 43 deletions(-)
>
> diff --git a/drivers/staging/gs_fpgaboot/io.c b/drivers/staging/gs_fpgaboot/io.c
> index c939119..d59b89f 100644
> --- a/drivers/staging/gs_fpgaboot/io.c
> +++ b/drivers/staging/gs_fpgaboot/io.c
> @@ -7,12 +7,8 @@
>   * This program is distributed in the hope that it will be useful,
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
>   */
>
>  #include <linux/kernel.h>
> diff --git a/drivers/staging/gs_fpgaboot/io.h b/drivers/staging/gs_fpgaboot/io.h
> index 5e839b1..fbc1cb9 100644
> --- a/drivers/staging/gs_fpgaboot/io.h
> +++ b/drivers/staging/gs_fpgaboot/io.h
> @@ -7,12 +7,8 @@
>   * This program is distributed in the hope that it will be useful,
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *
>   * GNU General Public License for more details.
>   *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
>   */
>
>  #define GPDIR	0
> diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
> index 18186d0..31943ab 100644
> --- a/drivers/staging/media/cxd2099/cxd2099.c
> +++ b/drivers/staging/media/cxd2099/cxd2099.c
> @@ -14,12 +14,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
> - * 02110-1301, USA
> - * Or, point your browser to http://www.gnu.org/copyleft/gpl.html
>   */
>
>  #include <linux/slab.h>
> diff --git a/drivers/staging/media/cxd2099/cxd2099.h b/drivers/staging/media/cxd2099/cxd2099.h
> index 0eb607c..44b8c23 100644
> --- a/drivers/staging/media/cxd2099/cxd2099.h
> +++ b/drivers/staging/media/cxd2099/cxd2099.h
> @@ -14,12 +14,6 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
>   *
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
> - * 02110-1301, USA
> - * Or, point your browser to http://www.gnu.org/copyleft/gpl.html
>   */
>
>  #ifndef _CXD2099_H_
> diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
> index ac69fe1..11118d9 100644
> --- a/drivers/staging/media/lirc/lirc_sasem.c
> +++ b/drivers/staging/media/lirc/lirc_sasem.c
> @@ -29,9 +29,6 @@
>   *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   *  GNU General Public License for more details.
>   *
> - *  You should have received a copy of the GNU General Public License
> - *  along with this program; if not, write to the Free Software
> - *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
>   */
>
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> diff --git a/drivers/staging/media/lirc/lirc_sir.c b/drivers/staging/media/lirc/lirc_sir.c
> index e498ae8..c160d12 100644
> --- a/drivers/staging/media/lirc/lirc_sir.c
> +++ b/drivers/staging/media/lirc/lirc_sir.c
> @@ -14,11 +14,6 @@
>   *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   *  GNU General Public License for more details.
>   *
> - *  You should have received a copy of the GNU General Public License
> - *  along with this program; if not, write to the Free Software
> - *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> - *
> - *
>   * 2000/09/16 Frank Przybylski <mail@frankprzybylski.de> :
>   *  added timeout and relaxed pulse detection, removed gap bug
>   *
> diff --git a/drivers/staging/media/lirc/lirc_zilog.c b/drivers/staging/media/lirc/lirc_zilog.c
> index f426460..70ef6a0 100644
> --- a/drivers/staging/media/lirc/lirc_zilog.c
> +++ b/drivers/staging/media/lirc/lirc_zilog.c
> @@ -33,10 +33,6 @@
>   *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   *  GNU General Public License for more details.
>   *
> - *  You should have received a copy of the GNU General Public License
> - *  along with this program; if not, write to the Free Software
> - *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> - *
>   */
>
>  #include <linux/module.h>
> diff --git a/drivers/staging/nvec/nvec-keytable.h b/drivers/staging/nvec/nvec-keytable.h
> index 1dc22cb..6bffdbe 100644
> --- a/drivers/staging/nvec/nvec-keytable.h
> +++ b/drivers/staging/nvec/nvec-keytable.h
> @@ -16,9 +16,6 @@
>   * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
>   * more details.
>   *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, write to the Free Software Foundation, Inc.,
> - * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
>   */
>
>  static unsigned short code_tab_102us[] = {
> diff --git a/drivers/staging/rtl8192e/license b/drivers/staging/rtl8192e/license
> index 4bea9fa..434de93 100644
> --- a/drivers/staging/rtl8192e/license
> +++ b/drivers/staging/rtl8192e/license
> @@ -303,10 +303,6 @@ ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
>  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
>  more details.
>
> -You should have received a copy of the GNU General Public License along with
> -this program; if not, write to the Free Software Foundation, Inc., 59
> -Temple Place - Suite 330, Boston, MA  02111-1307, USA.
> -
>  Also add information on how to contact you by electronic and paper mail.
>
>  If the program is interactive, make it output a short notice like this when
> diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rtl8712/mlme_linux.c
> index 999c16d..8e04202 100644
> --- a/drivers/staging/rtl8712/mlme_linux.c
> +++ b/drivers/staging/rtl8712/mlme_linux.c
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
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170326201832.GA10667%40hcs-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

