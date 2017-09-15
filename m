X-GM-THRID: 6465879632669310976
X-Received: by 10.28.15.72 with SMTP id 69mr210403wmp.3.1505456221071;
        Thu, 14 Sep 2017 23:17:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.100.130 with SMTP id y124ls131722wmb.9.gmail; Thu, 14 Sep
 2017 23:17:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCDVomA5XnASc+arfdaw3s2yqFIHp5tFgKpaaGQFh+fmb4BbfIqBHKx0VMt3pjlzDXmsoZ2
X-Received: by 10.28.136.143 with SMTP id k137mr216016wmd.3.1505456219999;
        Thu, 14 Sep 2017 23:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505456219; cv=none;
        d=google.com; s=arc-20160816;
        b=RjQbNY1W7bdyKdJ4RNlQTW9CkIL9yduNJraB3aPdVatjs6a1LkLiU31PyzEFlG+Dph
         1j9rWwCQr6JNYyGwYeVgDkf6UDEcLh32EpBhkNLOP0xAw+fKO04TKtKZsjHQ/TAXo/s6
         KJgsAWKDdNOFbEME8RgV1jMIFvT7JFQtZAc9TCJW5BLfYSyWdQw0aeHrnvO4F+sqvRZV
         GytR978+rEFatqCgzmxnwBUM4gW38tCYQqPiJ0SiOL5MUyTW6I2FONoCS6QlqvOLIW0F
         9VF47rv85/pCOirKLYKq0rnjaRaWelBYOE3CLncuhWJ7LfxHGJMqmNjJYOrRkJN0B/Mm
         cAZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=6Gtc2uUXGmRvZFlUa+1rRHhjqdf3njgKUM4ndpWdZJE=;
        b=GcW/tL0KQdQc8qFaVgcD1tx9LvsJo7xAh8l99pN668rwgarylPO7LHchwUKcV3mCVN
         wBOqKHznWQkt6yax6tqsRMLngSNVzzOODIvqv7zI970SHivTzcqLyuV2i2xlfuMGm/56
         gqKobLdeamzlKA+s+tCp7nEysKA2vL/Suhu+qfCoJ6iztUExBG7wBNwLKlqI664pkoM3
         7xkF1qvd4eW0F/QT0mlxYMI7C5yFZHIDDjZJxaxcWm7TbjK5J+KyUrg5i03qI5SWaW9v
         cCHo1B97Dtb07xMwPM2Ne1kfbB+5WC5ZV1BYTaaYLFMPBWymNqZsPZKo5ycCAUKMER3w
         ECpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si147549wmd.1.2017.09.14.23.16.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:16:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="291183830"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 08:16:59 +0200
Date: Fri, 15 Sep 2017 08:16:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/8] staging: lustre: ldlm: fix line
 over 80 characters
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709150814460.2287@hadrien>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> These patches fix checkpatch.pl warnings 'line over 80 characters' in ldlm files.
>
> -------------------------------------------------------------------------
>
> Aastha Gupta (8):
>   staging: lustre: ldlm: fix line over 80 characters
>   staging: lustre: ldlm: fix line over 80 characters
>   staging: lustre: ldlm: fix line over 80 characters
>   staging: lustre: ldlm: fix lines over 80 characters
>   staging: lustre: ldlm: fix lines over 80 characters
>   staging: lustre: ldlm: fix lines over 80 characters
>   staging: lustre: ldlm: fix lines over 80 characters
>   staging: lustre: ldlm: fix lines over 80 characters

Your patches all have the same subjects.  That is not allowed.  Eihter put
them all into one patch or add more information about the file name in the
subject line.  But don't include .h or .c

julia

>
>  drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
>  drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++--
>  drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 ++-
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++++------
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++--
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++--
>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++++++--------
>  drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
>  8 files changed, 67 insertions(+), 35 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505454643.git.aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

