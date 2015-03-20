X-GM-THRID: 8985735331840
Date: Fri, 20 Mar 2015 04:01:13 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: darshanapadmadas@gmail.com
Message-Id: <4cd58da2-bbb8-4976-8d38-3793911901dc@googlegroups.com>
In-Reply-To: <ff198249d01818ff39f7dda1acef5b83ef3b66a6.1426685762.git.darshanapadmadas@gmail.com>
References: <cover.1426685762.git.darshanapadmadas@gmail.com>
 <cover.1426685762.git.darshanapadmadas@gmail.com>
 <ff198249d01818ff39f7dda1acef5b83ef3b66a6.1426685762.git.darshanapadmadas@gmail.com>
Subject: Re: [PATCH v2 4/5] Staging: rtl8192e: Use ether_addr_copy for
 aligned addresses
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_861_1607936086.1426849273520"
X-Google-Token: EPn7r6gFO7EDFL5Qj8M0
X-Google-IP: 182.19.48.18

------=_Part_861_1607936086.1426849273520
Content-Type: multipart/alternative; 
	boundary="----=_Part_862_647583554.1426849273520"

------=_Part_862_647583554.1426849273520
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

This patch brings up incompatible pointer type warning for some arguments 
&dest and 
&header. So, please ignore this patch.

Also should I send v3 for this patch set? 

On Wednesday, March 18, 2015 at 7:13:59 PM UTC+5:30, Darshana Padmadas 
wrote:
>
> This patch replaces memcpy with ether_addr_copy since structures 
> are aligned as shown by pahole: 
> struct rtllib_hdr_3addrqos { 
>         __le16                     frame_ctl;            /*     0     2 */ 
>         __le16                     duration_id;          /*     2     2 */ 
>         u8                         addr1[6];             /*     4     6 */ 
>         u8                         addr2[6];             /*    10     6 */ 
>         u8                         addr3[6];             /*    16     6 */ 
>         __le16                     seq_ctl;              /*    22     2 */ 
>         __le16                     qos_ctl;              /*    24     2 */ 
>         u8                         payload[0];           /*    26     0 */ 
>
>         /* size: 26, cachelines: 1, members: 8 */ 
>         /* last cacheline: 26 bytes */ 
> }; 
>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com> 
> --- 
>  drivers/staging/rtl8192e/rtllib_tx.c | 6 +++--- 
>  1 file changed, 3 insertions(+), 3 deletions(-) 
>
> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c 
> b/drivers/staging/rtl8192e/rtllib_tx.c 
> index 4f68ffe..de74e0e 100644 
> --- a/drivers/staging/rtl8192e/rtllib_tx.c 
> +++ b/drivers/staging/rtl8192e/rtllib_tx.c 
> @@ -688,12 +688,12 @@ int rtllib_xmit_inter(struct sk_buff *skb, struct 
> net_device *dev) 
>                                  memcpy(&header.addr3, 
>                                         ieee->current_network.bssid, 
> ETH_ALEN); 
>                          else 
> -                                memcpy(&header.addr3, &dest, ETH_ALEN); 
> +                                ether_addr_copy(&header.addr3, &dest); 
>                  } else if (ieee->iw_mode == IW_MODE_ADHOC) { 
>                          /* not From/To DS: Addr1 = DA, Addr2 = SA, 
>                          Addr3 = BSSID */ 
> -                        memcpy(&header.addr1, dest, ETH_ALEN); 
> -                        memcpy(&header.addr2, src, ETH_ALEN); 
> +                        ether_addr_copy(&header.addr1, dest); 
> +                        ether_addr_copy(&header.addr2, src); 
>                          memcpy(&header.addr3, 
> ieee->current_network.bssid, 
>                                 ETH_ALEN); 
>                  } 
> -- 
> 1.9.1 
>
>
------=_Part_862_647583554.1426849273520
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">This patch brings up incompatible pointer type warning for some arguments &amp;dest and <br>&amp;header. So, please ignore this patch.<br><br>Also should I send v3 for this patch set? <br><br>On Wednesday, March 18, 2015 at 7:13:59 PM UTC+5:30, Darshana Padmadas wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This patch replaces memcpy with ether_addr_copy since structures
<br>are aligned as shown by pahole:
<br>struct rtllib_hdr_3addrqos {
<br>&nbsp; &nbsp; &nbsp; &nbsp; __le16 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; frame_ctl; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* &nbsp; &nbsp; 0 &nbsp; &nbsp; 2 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; __le16 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; duration_id; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* &nbsp; &nbsp; 2 &nbsp; &nbsp; 2 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; u8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; addr1[6]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* &nbsp; &nbsp; 4 &nbsp; &nbsp; 6 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; u8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; addr2[6]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* &nbsp; &nbsp;10 &nbsp; &nbsp; 6 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; u8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; addr3[6]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* &nbsp; &nbsp;16 &nbsp; &nbsp; 6 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; __le16 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; seq_ctl; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* &nbsp; &nbsp;22 &nbsp; &nbsp; 2 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; __le16 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; qos_ctl; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* &nbsp; &nbsp;24 &nbsp; &nbsp; 2 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; u8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; payload[0]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* &nbsp; &nbsp;26 &nbsp; &nbsp; 0 */
<br>
<br>&nbsp; &nbsp; &nbsp; &nbsp; /* size: 26, cachelines: 1, members: 8 */
<br>&nbsp; &nbsp; &nbsp; &nbsp; /* last cacheline: 26 bytes */
<br>};
<br>
<br>Signed-off-by: Darshana Padmadas &lt;<a href="mailto:darshanapadmadas@gmail.com" target="_blank">darshanapadmadas@gmail.com</a>&gt;
<br>---
<br>&nbsp;drivers/staging/rtl8192e/<wbr>rtllib_tx.c | 6 +++---
<br>&nbsp;1 file changed, 3 insertions(+), 3 deletions(-)
<br>
<br>diff --git a/drivers/staging/rtl8192e/<wbr>rtllib_tx.c b/drivers/staging/rtl8192e/<wbr>rtllib_tx.c
<br>index 4f68ffe..de74e0e 100644
<br>--- a/drivers/staging/rtl8192e/<wbr>rtllib_tx.c
<br>+++ b/drivers/staging/rtl8192e/<wbr>rtllib_tx.c
<br>@@ -688,12 +688,12 @@ int rtllib_xmit_inter(struct sk_buff *skb, struct net_device *dev)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;memcpy(&amp;header.addr3,
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ieee-&gt;current_network.bssid, ETH_ALEN);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;memcpy(&amp;header.addr3, &amp;dest, ETH_ALEN);
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;ether_addr_copy(&amp;header.<wbr>addr3, &amp;dest);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else if (ieee-&gt;iw_mode == IW_MODE_ADHOC) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not From/To DS: Addr1 = DA, Addr2 = SA,
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Addr3 = BSSID */
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>memcpy(&amp;header.addr1, dest, ETH_ALEN);
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>memcpy(&amp;header.addr2, src, ETH_ALEN);
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>ether_addr_copy(&amp;header.addr1, dest);
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>ether_addr_copy(&amp;header.addr2, src);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>memcpy(&amp;header.addr3, ieee-&gt;current_network.bssid,
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; ETH_ALEN);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>-- 
<br>1.9.1
<br>
<br></blockquote></div>
------=_Part_862_647583554.1426849273520--

------=_Part_861_1607936086.1426849273520--

