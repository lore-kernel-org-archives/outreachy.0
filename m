X-GM-THRID: 6803435195586314240
X-Received: by 2002:ab0:638e:: with SMTP id y14mr221537uao.142.1584469167359;
        Tue, 17 Mar 2020 11:19:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2a54:: with SMTP id p20ls1682205uar.7.gmail; Tue, 17 Mar
 2020 11:19:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vubsQYK2OZ6Y5phJh/sRiU2g0oHdP5531tw4UEFXKPctifIjQgki7ipQdK90BJsyjPqpRWE
X-Received: by 2002:ab0:14a2:: with SMTP id d31mr247544uae.106.1584469165585;
        Tue, 17 Mar 2020 11:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584469165; cv=none;
        d=google.com; s=arc-20160816;
        b=WWvf5Wv8uywidmSfCID/pZVYMZgV3DI1nq9bmvXU2GGT5kJFFVNVWElua39tXLOM/3
         VnkjxjkIjtioV6APSpPjwJ1uKS02oGkEDdNyUCkas/lOtnkR/Yh6LkuCWs8Z+HvAo6ly
         seLjN7AGx1XgtQUuv8PztQbq8dOyDhz0vu29heoEdqsvTsz+yMJxu9bSPfbpU0jizPXH
         qQgXSCE8VSDJRx7M/yqOV/ni4CEzazJLS837bEsc5Da0hFPHNaureYu3sTcreOPXm4G/
         J/OXFHhMwBg3r1flmw29FbyZaR6EWZ9VUeQLP6qa4zO5VpzFTjlkPAYPMfLwewXktYli
         RiiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0WI4vznDJ7fpvIg1UsHcmvKvBWONHe0/+mK5uySX+M8=;
        b=l5fNxEz1drpu/fpolDRtYGbmnwk5KhSWon9bGJZ6Z8xAlSq3zECNeJRaXyw0j4kfKJ
         vyDjXxlEfKrGBDKbXD3C++Zh/dX0BcV470hqAJESAGurCz3tdRfX9SDMBDikaKndb7kO
         aQNUsMX7oLamppx0E773qYUbb+P0MVijpZbWSTEdA+ary4o84ZxJLyeR0CsR+MuuTcIZ
         3E4e5i+H6Oe0GzKwH2cC6sArNy0+WJinoKm3vDiC3M8cYJY0VfBxaObqVaPJAP7oVTNO
         VjhI/2+EG0SS3QJ95PzKD1houhwIeRNEK9zKs8brEgMkmW46qnVKWogH3u85yrMSoSQt
         zkeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SY2XDRq5;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id w4si181076vse.2.2020.03.17.11.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 11:19:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SY2XDRq5;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id m15so104391pje.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 11:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0WI4vznDJ7fpvIg1UsHcmvKvBWONHe0/+mK5uySX+M8=;
        b=SY2XDRq5tdbChyyJoa2nAOORiWOgEeaCtlFBju6XzMqfZDXBkdaPeO17DWg1rwTSEQ
         0iVPAxqDjfsQIuj17UOYSlcnLCz0bwEXabmgBoBQtRbKcQp6/IxFqj9bwhKjTEIVPVpm
         T+zDoatxRqYtR8TOGkOHicNxWlcBiOA4l9yYaJVBzed+LrXsZvUCCfBBey7P6d3gcgB3
         r+m6UDCmTz6w1SgJ0YbS8GzNPSQLRkCAQuyzcejY/O82I5cqF7/q1zK1TQCapEB8T4RB
         akziAzdGN+6/LLj1qe9VEaNe/mpQOOOEYxctCRgDDXGQLoA78bYOOE/rxjEHa+a3g1/1
         jZVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0WI4vznDJ7fpvIg1UsHcmvKvBWONHe0/+mK5uySX+M8=;
        b=qrVYl5tUBAE1ksz/Da+iq9JCiSO1RwQR/jQQ9x+IjmNZ40La/Z43nN9e0VJE0D8I+7
         4jWZxbIBd7GY8vgPGkvBedm5orMuNSDCf/6a7JVOhPCHKYOUFR283Vro6NHZsDEYClHE
         I0MKAk4cZqA8bIykZx7oGO+JfcLLimy/4QoEmMJLythYbbzlJpLmXDUHIal44KW9sfdc
         yAgptJkVq7+Ym0u8r2Cy7uTOiJFDRnHp4pooPdNLt+1jG77yfHDzYxru0iCDyjeOU+34
         gYo/oSvGt10wqskGsiNSmya8uWlT3Kt5quMi2UAF+nPojWaCFj5uw3zCU87r/G10JpmA
         khlQ==
X-Gm-Message-State: ANhLgQ2SAbWI6m1JyGyXJBCjQCq1pHwh41MPpoiORhtbIiP//r5e2t2W
	cz24Emg+fn0LwsoGt9LZ/7U=
X-Received: by 2002:a17:90a:ab0a:: with SMTP id m10mr492274pjq.105.1584469164707;
        Tue, 17 Mar 2020 11:19:24 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id b70sm3969805pfb.6.2020.03.17.11.19.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 11:19:24 -0700 (PDT)
Date: Tue, 17 Mar 2020 23:49:19 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com
Subject: Re: [PATCH 4/4] staging: fbtft: Avoid potential precedence issues
Message-ID: <20200317181917.GA21274@deeUbuntu>
References: <cover.1584314603.git.mh12gx2825@gmail.com>
 <5c8520a5c3da453460608deee9a25232d52f4513.1584314604.git.mh12gx2825@gmail.com>
 <20200317114614.GA1233256@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317114614.GA1233256@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 12:46:14PM +0100, Greg KH wrote:
> On Mon, Mar 16, 2020 at 05:12:32AM +0530, Deepak R Varma wrote:
> > Put parentheses around uses of macro parameters to avoid possible
> > precedence issues. Problem detected by checkpatch.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> > ---
> >  drivers/staging/fbtft/fbtft.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> > index 81da30f4062e..76f8c090a837 100644
> > --- a/drivers/staging/fbtft/fbtft.h
> > +++ b/drivers/staging/fbtft/fbtft.h
> > @@ -406,8 +406,8 @@ do {                                                         \
> >  
> >  #define fbtft_par_dbg(level, par, format, arg...)            \
> >  do {                                                         \
> > -	if (unlikely(par->debug & level))                    \
> > -		dev_info(par->info->device, format, ##arg);  \
> > +	if (unlikely((par)->debug & (level)))                    \
> > +		dev_info((par)->info->device, format, ##arg);  \
> 
> "precedence issues" are impossible to happen here, it's a pointer that
> we are dealing with, not some other type of expression.
> 
> So I'll take this, just to shut checkpatch up, but note that this is
> _NOT_ a real issue at all.

Thank you Greg.

> 
> And what about all of the other macros like this in this file?  Does
> only this one need the changes?

There is one more macro that accepts arguments, but its already fixed in
the past. I did not find any other macro with similar checkpatch
warning.

> 
> thanks,
> 
> greg k-h

