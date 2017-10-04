X-GM-THRID: 6472784237919469568
X-Received: by 10.107.132.211 with SMTP id o80mr13615139ioi.59.1507124051529;
        Wed, 04 Oct 2017 06:34:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.17.75 with SMTP id 72ls4088904itf.10.gmail; Wed, 04 Oct
 2017 06:34:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBjGMgQ2psiDP6QJs/ixQ9uVXlFCXVrsR4gxkgiiuKvEKWdwLjFCIjlThoNKdDMnPJ8wqR2
X-Received: by 10.36.182.81 with SMTP id d17mr389296itj.5.1507124050200;
        Wed, 04 Oct 2017 06:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507124050; cv=none;
        d=google.com; s=arc-20160816;
        b=tEBx9ncO2fjkCAB5IFl90L3/9SlSoUO9ZvGIOId0MP2B2ZiLDeLKBiArb7+/RAQhZr
         1gv7WjUUyYPL1y+gR8wRd5zcoHacz0WCYa6NyQKTiz84kPb5fAn2Yg0q4CovWAO7zF5B
         WU8Au6gBcqbIJRQAZkreus/DmWGYL/h3WFXI/gNJxD1JZibXNuJe2h5GU5pbij0NnSrz
         Wj3l4Nh0GXosYbZTzFWkpjvpl5CRckGyj0Nn7CnpQOqKPm33hhTN+rbdrYMjnIt7dXu7
         kvBHsDYfZ3jY6Fy6mK8xpvIleZ4ajxvK24MhZTLMaGxl5jNNoAwxAC50+1AOwCVGdmk/
         khsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=jeXE7GcqbL5LZSW3Q8n77uS/HQO7DAVO32TDXCvQmDw=;
        b=M5conpk3L5TNdZoFq8p5KgE0AVuhIzaWQh84c3uVbRiIjg37EKVO9tiWhqgnrtK2jA
         sOhe1taMryL000m4mr+XCfEIEMy3Uo8RnnvFYfhtVJX0K6QBOdMcS4HJg4inBy7iCOkP
         PPr+Dgn2d9lzvsk9Rul1QFznfKPXlDKU4V2FBoyprSel7qnMlHu5YM0vFemx80Cxoltd
         Gp42LlMs3Sg7HgEFm0zzuqCoSQ4QTHoWKILD7r/WKhhiiszAf1NTqSjtlnjDkx98onJC
         q+GokoVZ9XqwG6hbuHyAAnV41j+kYIPKjul0tEw9rRAtQR4kFrPIQvq+CgdswuldHMVS
         gwrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 72si816878iti.2.2017.10.04.06.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 06:34:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,477,1500933600"; 
   d="scan'208";a="239723285"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Oct 2017 15:34:07 +0200
Date: Wed, 4 Oct 2017 15:34:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Use
 list_for_each_entry_safe
In-Reply-To: <1507122755-5489-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1710041533110.2815@hadrien>
References: <1507122755-5489-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Again, you have three patches on different files with the same subject
line.  You could add the file name eg rtw_ap: to the subject line to make
them unique.

julia

On Wed, 4 Oct 2017, Srishti Sharma wrote:

> Use list_for_each_entry_safe to make the code more compact. Done
> by the following semantic patch by coccinelle.
>
> @r@
> struct list_head* l;
> expression e;
> identifier m,list_del_init,f;
> type T1;
> T1* pos;
> iterator name list_for_each_entry_safe;
> @@
>
> f(...){
>
> +T1* tmp;
> <+...
> -while(...)
> +list_for_each_entry_safe(pos,tmp,l,m)
> {
> ...
> -pos = container_of(l,T1,m);
> ...
> -l=e;
>  <+...
>  list_del_init(&pos->m)
>  ...+>
> }
> ...+>
>
> }
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index a2c599f..551af9e 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -280,7 +280,7 @@ void	expire_timeout_chk(struct adapter *padapter)
>  {
>  	struct list_head *phead, *plist;
>  	u8 updated = 0;
> -	struct sta_info *psta = NULL;
> +	struct sta_info *psta = NULL, *tmp;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	u8 chk_alive_num = 0;
>  	char chk_alive_list[NUM_STA];
> @@ -292,10 +292,7 @@ void	expire_timeout_chk(struct adapter *padapter)
>  	plist = phead->next;
>
>  	/* check auth_queue */
> -	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, auth_list);
> -		plist = plist->next;
> -
> +	list_for_each_entry_safe(psta, tmp, plist, auth_list) {
>  		if (psta->expire_to > 0) {
>  			psta->expire_to--;
>  			if (psta->expire_to == 0) {
> @@ -326,10 +323,7 @@ void	expire_timeout_chk(struct adapter *padapter)
>  	plist = phead->next;
>
>  	/* check asoc_queue */
> -	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, asoc_list);
> -		plist = plist->next;
> -
> +	list_for_each_entry_safe(psta, tmp, plist, asoc_list) {
>  		if (chk_sta_is_alive(psta) || !psta->expire_to) {
>  			psta->expire_to = pstapriv->expire_to;
>  			psta->keep_alive_trycnt = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507122755-5489-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

