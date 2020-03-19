X-GM-THRID: 6805880138024091648
X-Received: by 2002:a19:ee13:: with SMTP id g19mr1945964lfb.205.1584619259766;
        Thu, 19 Mar 2020 05:00:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:41d5:: with SMTP id d21ls347744lfi.11.gmail; Thu, 19 Mar
 2020 05:00:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv0kNW8LJL4q4oy26Q0jt4ebu6sDOrdZhytit5GSwzmTqGCGWGfleEFLHUBaLyFPavMfych
X-Received: by 2002:ac2:4c0f:: with SMTP id t15mr1121767lfq.143.1584619256761;
        Thu, 19 Mar 2020 05:00:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584619256; cv=none;
        d=google.com; s=arc-20160816;
        b=kfqGZvbjn6CQTDfMf14X3OzhG6tLenHN9gnoGQGkEmqTwDxNUCn5Ju3klaya+dMZMP
         tt1IM5Xj+RnER8SiiIDINUGZg5p49zHp9BTJKorfFPw0SGAg/VCgsWyfd/qfLZc+5FBS
         DympaNdBtH5i9Xz9wibA8ynW/p8EqkkjXyInqLsVJVKFwbmsJK/Suw3wKVWJcAr+QZlf
         f+bh9HgKJf6Va7KSmiVov13bUg6gyw08FvPV9Cf7r+YmEvOqFHW70Bhx1nRB3QSleJVQ
         ra/3dllgbBL7KidLuEcyVDS2X3/ufLDcOi94F7BMV2sYWpQj7wDFqfiEOtFQ6KVtUGs7
         ZlJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mVQdlXkvl/mRzqlxTacwLBPtYnYMm5Ccpc1N/qj7WaM=;
        b=f1V2k9m8rBJIoPFCZtuk2Me2BrzttDYx1npdkP1LF85B0NDzb7vmgnrsZtRoRldQKQ
         PT8ErLLMEV+jaI2qXdyN2W7ti5vijjbvXVrjOm0faxUdUuodwuphiWRC2s+Nw/HmZEty
         xvXB8P+Kv9X/ZkICX86FlhB258hninxfCdCjgbPID1B11q9roAsQk7gXSWFsvxWZd+Ih
         n2AwJjoHgR9HILvtzgH4vA6dF5iPsFOE2vysAltUqElJUbs6LEwlon2qzklq24Ss/9LL
         wmevYd1R7ppT7OyfpTOBZNo3kDBNXw1ANgZ6DUZ7RVCBg5htptjkS/qWoUYDNZuXcDf3
         Pg5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s22si92161ljp.0.2020.03.19.05.00.56
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 05:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 28276 invoked from network); 19 Mar 2020 12:00:54 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 12:00:54 -0000
Date: Thu, 19 Mar 2020 17:28:42 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I sent a patchset of 4 rtl8723bs/os_dep it is
 not showing in web interface
Message-ID: <20200319115831.GD3889@tulip.local>
References: <20200319113044.GC3889@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319113044.GC3889@tulip.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 05:00:45PM +0530, R Veera Kumar wrote:
> Hi,
> 
> I sent three patchset. Two are showing in google group but one is not.
> 
> Though I have received mail for all the 3 from outreachy as the subject
> line is changed to [Outreachy kernel].
> 
> Can you please help.
> 

Sorry. I see that it is below previous one.

Veera

> Veera
> 

