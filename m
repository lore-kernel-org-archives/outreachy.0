X-GM-THRID: 6806789560169660416
X-Received: by 2002:a1f:5183:: with SMTP id f125mr5531875vkb.64.1584958258310;
        Mon, 23 Mar 2020 03:10:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5589:: with SMTP id v9ls979177uaa.11.gmail; Mon, 23 Mar
 2020 03:10:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuMdW6pkFL+E1PCgksfXsHK3HfCO3pV8onSiqltfDQ1nwNSj+hOo/cw86hDt5QRhemRoEiZ
X-Received: by 2002:a9f:35c3:: with SMTP id u3mr3864293uad.140.1584958256541;
        Mon, 23 Mar 2020 03:10:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584958256; cv=none;
        d=google.com; s=arc-20160816;
        b=mP0lh+TxNEKmTmABk/30Hh9OOWmZBnNWfkVCNVCe/WLR7MV6zvtRCO5jaHYY3lzYdv
         PqQprYX+9gbhu+/ddBFmdTdjq//B3oa33fO8f8stL+nnFiPvFtGkvZgOVTrdwMG98/fZ
         v6HsHCHVPRJ0HF8FKSahoYk2wX147jxvxfY1KJqrmHykvSYI1CKj+EyxohFHuJ7AarNv
         n/Hm4UbMVt4b8AiueufWLNU8iakuRHJVEDZiBNpvB97+mVwO3dMzFvEc6QUbrfI8qSAl
         fs0eUGDJ2CIyIbSCHuvFZylsvbL3O3LDZa1hqgPjwBM7hPtj8d+JiwemN5ah6CXyvwGH
         0V/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=KtTMpqs9OxKiRBs03AEs96J80S/zGsASR4PrhyjUT3A=;
        b=HsoaYcancD7BmNsmQQhuQ8w5G8ReTUV8vaa/B+3vpU/ZgyWyabLdlbMepRVxceO/C/
         ZeAj3dPwAnMG+8PnsZGyew0WQ9Mw4REHC9bFGaGWgb5kYAPZJ0MutSgT4DZR6hSIPczC
         Yaq452fUE4LwTgOX7GtcP+J+Sr5okGj00rLbxYnnpG3hvQ6A4ZBe9Pb8Fyx9yj75juvy
         RU8a0CUplqXaVLjkgownC+2SAMOdoTLYezjGtn9qhZi4NBp+swINzLriNgVRjvs2Up+c
         cAr4ZBlo8CwAcm18eGuMZtX/ur/g5F+6Zm24FTL1YO4TO8NvbWnlV0vHHV6kPXlSeVb5
         kqtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZP4wzo4;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v5si296733vsl.0.2020.03.23.03.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 03:10:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JZP4wzo4;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id t16so5724462plr.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 03:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KtTMpqs9OxKiRBs03AEs96J80S/zGsASR4PrhyjUT3A=;
        b=JZP4wzo4beoMLxJBVLD/QqEBPBZ9t86h31Hqm0XEpkowrEuxOcX8dj6NyNLj5Ftuiu
         tEhDThHONyVZlBcr0m5KZGtwpKfyKMt+G9GXRLkbWr1n2BHn98e7RlwoZcj8g2ZDMHtb
         Cii6j1xhq1kgahgrPUPDy86ZpkOZTeSDut3ZrZIYJuWJ6etSgrk5fMT6hqYVpHTGFPz5
         z4kmP6O5p7egkw535XP4FlNQxFzjt/xfmACvT3tKbR242P7RtbwtX/chbsn9TiYRUYYZ
         y9fEPjYiq0YoiZ9zFEOCsalnYHamo9RQYHSJ7ngv8Wlrn+/G2bhPbS/KJ5VgcjinZ9zV
         J9lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KtTMpqs9OxKiRBs03AEs96J80S/zGsASR4PrhyjUT3A=;
        b=rWZFv1ubMjAWvokKqBJ+OQYx6xcMNFUaFbSYlN+WqtfxiQzYifCAkKWN1Llfu5JF4+
         OyPn8AHErKkUYWsRnT97MoZ+veT7/hnk63REBpSX+VKanU0wePXTFV8HWJz0lvfPr6pq
         EqGp1qne8h9xBUnLpg2v+C0C0+7nUVF1rXW1hyaLuO3/6F1wfYYWhByxuyS/2yiA065O
         trfZ+aqdt/pa7CVkxkYm9VD64V2CBUvp069fqe/BKNyQ0xBQrbfksdQrrDI3zD3rm0IA
         IC7EqvTvypN+v57ny3G1mQTbdY89RHFqYQ4zny42MvG4QhAqpLLzusFDbNFccBLdhDmU
         Gq+g==
X-Gm-Message-State: ANhLgQ0HVCz0/+aDm25nATvskmAGWqyZBpRWh4XglCZ/YjCTlr3oaz8c
	9rPJJq2jRRqmcKtURIQVkH8xHiWwDYY=
X-Received: by 2002:a17:90a:5d16:: with SMTP id s22mr18751427pji.184.1584958255380;
        Mon, 23 Mar 2020 03:10:55 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([1.23.93.222])
        by smtp.googlemail.com with ESMTPSA id z16sm11851197pjt.40.2020.03.23.03.10.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 03:10:54 -0700 (PDT)
Message-ID: <24a7d4a5b2595326f61082cbe5220ed73e9c27e9.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Mon, 23 Mar 2020 15:40:50 +0530
In-Reply-To: <20200323020425.62dbeebb@elisabeth>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
	 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
	 <20200322112744.GC75383@kroah.com>
	 <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
	 <f2b4f7f38a8a490ffc917f7199099ac95656c8c2.camel@gmail.com>
	 <20200323020425.62dbeebb@elisabeth>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-23 at 02:04 +0100, Stefano Brivio wrote:
> Hi Shreeya,
> 
> On Mon, 23 Mar 2020 04:48:08 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > On Sun, 2020-03-22 at 08:09 -0700, Joe Perches wrote:
> > > On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:  
> > 
> > Hi Greg and Joe,
> > 
> > > > On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel
> > > > wrote:  
> > > > > Add space around operators for improving the code
> > > > > readability.
> > > > > Reported by checkpatch.pl
> > > > > 
> > > > > git diff -w shows no difference.
> > > > > diff of the .o files before and after the changes shows no
> > > > > difference.  
> > > > 
> > > > There is no need to have these two lines on every changelog
> > > > comment
> > > > in
> > > > this series :(  
> > > 
> > >   
> > 
> > Yes I get that.
> > 
> > > In my opinion, there's no need for a series here.
> > > 
> > > Whitespace only changes _should_ be done all at once.
> > > 
> > > Whitespace changes _could_ have changed string constants.
> > > 
> > > So noting that the patch in only whitespace and that
> > > there isn't a difference in object files is useful as
> > > it shows any change has been compiled and tested.
> > >   
> > 
> > Joe, I feel the same thing, there is no need of a patch series
> > for it but I was given a suggestion that it becomes difficult for
> > the
> > reviewers to review the patch so it is good to send a patchset
> > instead.
> 
> In this case, reviewing the 224 lines you're touching in one shot
> feels
> the same as reviewing them over 11 patches, as the change is always
> of
> the same type. Maybe a single patch is actually even a bit quicker to
> review.
> 
> Are you sure the suggestion was referring to this, and it wasn't
> about
> different type of changes in the same patch?
> 
Yes I am sure about it. But anyway I will send a single patch for these
changes now.

Thanks Stefano :)



