X-GM-THRID: 1427250348032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5782da9d37db3af6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.152.140 with SMTP id 134mr11326069qhy.6.1424458499991;
        Fri, 20 Feb 2015 10:54:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.105 with SMTP id b96ls1346265qga.50.gmail; Fri, 20 Feb
 2015 10:54:59 -0800 (PST)
X-Received: by 10.236.26.108 with SMTP id b72mr10752894yha.33.1424458499842;
        Fri, 20 Feb 2015 10:54:59 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id ba9si5304960qcb.0.2015.02.20.10.54.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:54:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f54.google.com with SMTP id z60so15528529qgd.13
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=3LWYOvLSGAbOklE/QPWv9gNcKc8Qp8TPsbRxM0nuwh8=;
        b=XcPvcUptCzT3IdTxRQcEytRoX3Bir2zlQnXgZrFum8ut5meM+3pLQ+N7vuQ76pgEyQ
         s9IZ/Q3w4B6WktJM82gKsXqZwaUMtlbKsp9ZDVZHHOUhzUUv7jL9gcDX3JXQvmtg+EKr
         ym8+T2sD1mYotRiGtI9mp2GG07mukSLWxbcfC8D+xf8D7eAfcRAueGfdLNkbnzxuB9Es
         a0EQflEJCzUFdCrvurS6QjI8Y3lQEIJ3CUFVYKb1KtJ8g8isgKpepgH5v7TVWx7/eVBb
         gilV9pIvLDG3Mpm1+ryo+dBwRKjz1s1gCd2p5ytIv5Cx4sh2MHkFrMHKiQV4+Q7jdrEc
         NTSg==
X-Received: by 10.140.149.130 with SMTP id 124mr27044781qhv.40.1424458499723;
        Fri, 20 Feb 2015 10:54:59 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id m8sm16833552qag.30.2015.02.20.10.54.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:54:59 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E78302.3080809@gmail.com>
Date: Fri, 20 Feb 2015 13:54:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: aybuke ozdemir <aybuke.147@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lustre: fid: Remove
 unnecessary else after return
References: <1424456838-6096-1-git-send-email-aybuke.147@gmail.com>
In-Reply-To: <1424456838-6096-1-git-send-email-aybuke.147@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 13:27, aybuke ozdemir wrote:
> This patch fixes the following checkpatch warning:
> WARNING : else is not generally useful after a break or return
> 204: FILE: drivers/staging/lustre/lustre/fid/fid_request.c
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/lustre/lustre/fid/fid_request.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
> index 063441a..54dcfa3 100644
> --- a/drivers/staging/lustre/lustre/fid/fid_request.c
> +++ b/drivers/staging/lustre/lustre/fid/fid_request.c
> @@ -201,10 +201,9 @@ static int seq_client_alloc_seq(const struct lu_env *env,
>  			CERROR("%s: Can't allocate new meta-sequence, rc %d\n",
>  			       seq->lcs_name, rc);
>  			return rc;
> -		} else {
> -			CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
> -			       seq->lcs_name, PRANGE(&seq->lcs_space));
>  		}
> +		CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
> +			seq->lcs_name, PRANGE(&seq->lcs_space));
>  	} else {
>  		rc = 0;
>  	}
> 

The commit message would be better if you wrote a comment rather than
just copying in the checkpatch output.

Your solution is one way to resolve this issue, and technically correct.
However it's not always straight forward which it is the best solution.
In this particular case, I would consider an alternative avoiding the
'return' in the middle of the function, by using a goto. The rationale
for this is that if you have locks (mutex/spinlocks/etc) in the code it
makes it easier to track locking by reducing the number of exit points
from the code.

I would probably have chosen to make the code look like this (note this
is a hand-crafted pseudo patch):

static int seq_client_alloc_seq(const struct lu_env *env,
                                struct lu_client_seq *seq, u64 *seqnr)
{
        int rc;

        LASSERT(range_is_sane(&seq->lcs_space));

        if (range_is_exhausted(&seq->lcs_space)) {
                rc = seq_client_alloc_meta(env, seq);
                if (rc) {
                        CERROR("%s: Can't allocate new meta-sequence, rc
%d\n",
                               seq->lcs_name, rc);
-			return rc;
+                       goto out;
                } else {
                        CDEBUG(D_INFO, "%s: New range - "DRANGE"\n",
                               seq->lcs_name, PRANGE(&seq->lcs_space));
                }
        } else {
                rc = 0;
        }

        LASSERT(!range_is_exhausted(&seq->lcs_space));
        *seqnr = seq->lcs_space.lsr_start;
        seq->lcs_space.lsr_start += 1;

        CDEBUG(D_INFO, "%s: Allocated sequence [%#llx]\n", seq->lcs_name,
               *seqnr);

+ out:
        return rc;
}

A lot of this comes down to preference and judgment of the developer, as
there is more than one solution to the problem.

When you see an error message from checkpatch like this one, it is good
idea to take a step back and consider which solution makes the most sense.

Cheers,
Jes


