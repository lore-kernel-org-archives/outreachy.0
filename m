X-GM-THRID: 6254513741412433920
X-Received: by 10.107.136.23 with SMTP id k23mr5618283iod.23.1456467487946;
        Thu, 25 Feb 2016 22:18:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.166 with SMTP id q6ls434724igr.34.canary; Thu, 25 Feb
 2016 22:18:07 -0800 (PST)
X-Received: by 10.66.141.102 with SMTP id rn6mr45180051pab.26.1456467487578;
        Thu, 25 Feb 2016 22:18:07 -0800 (PST)
Return-Path: <bounce-md_30481620.56cfee1f.v1-0603ab2b78944af18834d5c2f3a7a5f2@mandrillapp.com>
Received: from mail132-22.atl131.mandrillapp.com (mail132-22.atl131.mandrillapp.com. [198.2.132.22])
        by gmr-mx.google.com with ESMTPS id t198si739677ywe.3.2016.02.25.22.18.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:18:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cfee1f.v1-0603ab2b78944af18834d5c2f3a7a5f2@mandrillapp.com designates 198.2.132.22 as permitted sender) client-ip=198.2.132.22;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cfee1f.v1-0603ab2b78944af18834d5c2f3a7a5f2@mandrillapp.com designates 198.2.132.22 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cfee1f.v1-0603ab2b78944af18834d5c2f3a7a5f2@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=7woD+e83JUjEpqkEtaVBieKh5KY=;
 b=H1p/X7POGyKIzG+knceEuEq0oZV8SfgivosNRzXlBdAo4Zad9RWq1+SGfwZL6u5U1q4GmfJSrbXj
   yrnH2HmpzcUFOXJYDiTb6zpRx05AAZhc7mJh3soPoZ71Mo+SglExRpOmHBT3bQ6gp6pn8hS4AiVt
   nYmdKrrHjdHrMwO5NRE=
Received: from pmta02.mandrill.prod.atl01.rsglab.com (127.0.0.1) by mail132-22.atl131.mandrillapp.com id hpvn1u1sar8r for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:18:07 +0000 (envelope-from <bounce-md_30481620.56cfee1f.v1-0603ab2b78944af18834d5c2f3a7a5f2@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456467487; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=UDdBLhxJPgBos5cmFlozIoCZftx6ixN+9d8te1yh2Ig=; 
 b=F9IwvDqbw4i7yPXKyuwdEkCBpNYuuoq9CnJ9PYpKUT48o0TJz8JZKrGeT4oYssAOLYZyyt
 UMgbvWd+fIdylCVylEe4hJNf6sT8qnWtuJxFjmtWnGoOefQDhG5SVCeeeItWf2IMD5sbt2dv
 g5hBAQm2aUgnS62+aYbOahFs7zQKo=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] Staging: lustre: Use min or max instead of ternary operator
Return-Path: <bounce-md_30481620.56cfee1f.v1-0603ab2b78944af18834d5c2f3a7a5f2@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 0603ab2b78944af18834d5c2f3a7a5f2; Fri, 26 Feb 2016 06:18:07 +0000
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226061806.GA22168@kroah.com>
References: <cover.1456241358.git.bhumirks@gmail.com> <8af7a8ccdaed489dabc1ee84571ff8fe2d8b3368.1456241358.git.bhumirks@gmail.com>
In-Reply-To: <8af7a8ccdaed489dabc1ee84571ff8fe2d8b3368.1456241358.git.bhumirks@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.0603ab2b78944af18834d5c2f3a7a5f2
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:18:07 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Tue, Feb 23, 2016 at 09:17:19PM +0530, Bhumika Goyal wrote:
> Replace ternary operators with macros min/max as they are
> shorter and thus increases code readability. Macro min returns the
> minimum and max returns maximum of the two compared values.
> Made a semantic patch for changes:
> 
> @@
> type T;
> T x;
> T y;
> @@
> (
> - x < y ? x : y
> + min(x,y)
> |
> - x > y ? x : y
> + max(x,y)
> )
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
> Changes in v2:
> Use min()/max() instead of min_t()/max_t() as the values passed in the
> macros are of same type.
> 
>  drivers/staging/lustre/lustre/include/lustre_disk.h | 6 ++----
>  drivers/staging/lustre/lustre/osc/osc_request.c     | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/events.c       | 2 +-
>  3 files changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
> index 7c6933f..8254428 100644
> --- a/drivers/staging/lustre/lustre/include/lustre_disk.h
> +++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
> @@ -331,14 +331,12 @@ static inline void lcd_cpu_to_le(struct lsd_client_data *lcd,
>  
>  static inline __u64 lcd_last_transno(struct lsd_client_data *lcd)
>  {
> -	return (lcd->lcd_last_transno > lcd->lcd_last_close_transno ?
> -		lcd->lcd_last_transno : lcd->lcd_last_close_transno);
> +	return max(lcd->lcd_last_transno, lcd->lcd_last_close_transno);
>  }
>  
>  static inline __u64 lcd_last_xid(struct lsd_client_data *lcd)
>  {
> -	return (lcd->lcd_last_xid > lcd->lcd_last_close_xid ?
> -		lcd->lcd_last_xid : lcd->lcd_last_close_xid);
> +	return max(lcd->lcd_last_xid, lcd->lcd_last_close_xid);
>  }
>  
>  /****************** superblock additional info *********************/
> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
> index 43b11c6..b48c23e 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
> @@ -1170,7 +1170,7 @@ static u32 osc_checksum_bulk(int nob, u32 pg_count,
>  	}
>  
>  	while (nob > 0 && pg_count > 0) {
> -		int count = pga[i]->count > nob ? nob : pga[i]->count;
> +		int count = min(nob, pga[i]->count);
>  
>  		/* corrupt the data before we compute the checksum, to
>  		 * simulate an OST->client data error */
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
> index 64eaa0e..dc2996f 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/events.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
> @@ -254,7 +254,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
>  
>  	new_seq = (sec << REQS_SEC_SHIFT) |
>  		  (usec << REQS_USEC_SHIFT) |
> -		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
> +		  (max(0, svcpt->scp_cpt));
>  
>  	if (new_seq > svcpt->scp_hist_seq) {
>  		/* This handles the initial case of scp_hist_seq == 0 or

Doesn't apply due to other changes in this code from other developers.
Please rebase and resend.

thanks,

greg k-h

