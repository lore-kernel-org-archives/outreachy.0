X-GM-THRID: 6208177008118071296
X-Received: by 10.107.150.208 with SMTP id y199mr14565038iod.15.1445761679876;
        Sun, 25 Oct 2015 01:27:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.171 with SMTP id s40ls2815614qge.43.gmail; Sun, 25 Oct
 2015 01:27:59 -0700 (PDT)
X-Received: by 10.129.88.87 with SMTP id m84mr24724842ywb.0.1445761679285;
        Sun, 25 Oct 2015 01:27:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3030265pac.2.2015.10.25.01.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 582C067;
	Sun, 25 Oct 2015 08:27:58 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:49:14 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: lustre: lnet: Fix endian
 sparse warnings
Message-ID: <20151025014914.GB536@kroah.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
 <661be4508c123053e8c41b7810f53676fba06eb7.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <661be4508c123053e8c41b7810f53676fba06eb7.1445453573.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 12:33:11AM +0530, Amitoj Kaur Chawla wrote:
> Fix bug found using sparse which generates the following warning:
> 
> drivers/staging/lustre/lnet/lnet/lib-msg.c:72:37: warning: cast to
> restricted __le64
> drivers/staging/lustre/lnet/lnet/lib-msg.c:73:37: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:116:42: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:117:42: warning: cast to
> restricted __le64
> drivers/staging/lustre/lnet/lnet/lib-msg.c:118:42: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:120:42: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:121:42: warning: cast to
> restricted __le64
> drivers/staging/lustre/lnet/lnet/lib-msg.c:125:42: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:126:42: warning: cast to
> restricted __le64
> drivers/staging/lustre/lnet/lnet/lib-msg.c:128:42: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:129:42: warning: cast to
> restricted __le32
> drivers/staging/lustre/lnet/lnet/lib-msg.c:384:46: warning: incorrect
> type in assignment (different base types)
> drivers/staging/lustre/lnet/lnet/lib-msg.c:384:46: expected unsigned
> int [unsigned] [usertype] mlength
> drivers/staging/lustre/lnet/lnet/lib-msg.c:384:46: got restricted
> __le32 [usertype] <noident>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/lib-msg.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/lnet/lib-msg.c b/drivers/staging/lustre/lnet/lnet/lib-msg.c
> index 43977e8..4ad9a340 100644
> --- a/drivers/staging/lustre/lnet/lnet/lib-msg.c
> +++ b/drivers/staging/lustre/lnet/lnet/lib-msg.c
> @@ -69,8 +69,8 @@ lnet_build_msg_event(lnet_msg_t *msg, lnet_event_kind_t ev_type)
>  
>  	if (ev_type == LNET_EVENT_SEND) {
>  		/* event for active message */
> -		ev->target.nid    = le64_to_cpu(hdr->dest_nid);
> -		ev->target.pid    = le32_to_cpu(hdr->dest_pid);
> +		ev->target.nid    = hdr->dest_nid;
> +		ev->target.pid    = hdr->dest_pid;
>  		ev->initiator.nid = LNET_NID_ANY;
>  		ev->initiator.pid = the_lnet.ln_pid;
>  		ev->sender        = LNET_NID_ANY;
> @@ -113,20 +113,20 @@ lnet_build_msg_event(lnet_msg_t *msg, lnet_event_kind_t ev_type)
>  
>  	case LNET_EVENT_SEND: /* active message */
>  		if (msg->msg_type == LNET_MSG_PUT) {
> -			ev->pt_index   = le32_to_cpu(hdr->msg.put.ptl_index);
> -			ev->match_bits = le64_to_cpu(hdr->msg.put.match_bits);
> -			ev->offset     = le32_to_cpu(hdr->msg.put.offset);
> +			ev->pt_index   = hdr->msg.put.ptl_index;
> +			ev->match_bits = hdr->msg.put.match_bits;
> +			ev->offset     = hdr->msg.put.offset;
>  			ev->mlength    =
> -			ev->rlength    = le32_to_cpu(hdr->payload_length);
> -			ev->hdr_data   = le64_to_cpu(hdr->msg.put.hdr_data);
> +			ev->rlength    = hdr->payload_length;
> +			ev->hdr_data   = hdr->msg.put.hdr_data;
>  
>  		} else {
>  			LASSERT(msg->msg_type == LNET_MSG_GET);
> -			ev->pt_index   = le32_to_cpu(hdr->msg.get.ptl_index);
> -			ev->match_bits = le64_to_cpu(hdr->msg.get.match_bits);
> +			ev->pt_index   = hdr->msg.get.ptl_index;
> +			ev->match_bits = hdr->msg.get.match_bits;
>  			ev->mlength    =
> -			ev->rlength    = le32_to_cpu(hdr->msg.get.sink_length);
> -			ev->offset     = le32_to_cpu(hdr->msg.get.src_offset);
> +			ev->rlength    = hdr->msg.get.sink_length;
> +			ev->offset     = hdr->msg.get.src_offset;
>  			ev->hdr_data   = 0;
>  		}
>  		return;
> @@ -381,7 +381,7 @@ lnet_complete_msg_locked(lnet_msg_t *msg, int cpt)
>  
>  		msg->msg_hdr.msg.ack.dst_wmd = ack_wmd;
>  		msg->msg_hdr.msg.ack.match_bits = msg->msg_ev.match_bits;
> -		msg->msg_hdr.msg.ack.mlength = cpu_to_le32(msg->msg_ev.mlength);
> +		msg->msg_hdr.msg.ack.mlength = msg->msg_ev.mlength;

Same issue with this patch, I think you just broke things :(

