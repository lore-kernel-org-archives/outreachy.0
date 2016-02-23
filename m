X-GM-THRID: 6254101469498179584
X-Received: by 10.140.222.72 with SMTP id s69mr817904qhb.15.1456213858080;
        Mon, 22 Feb 2016 23:50:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.20.232 with SMTP id q8ls1037583obe.50.gmail; Mon, 22 Feb
 2016 23:50:57 -0800 (PST)
X-Received: by 10.182.47.132 with SMTP id d4mr31165769obn.40.1456213857601;
        Mon, 22 Feb 2016 23:50:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id g136si1623168ywb.5.2016.02.22.23.50.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 23:50:57 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id y89so130384565qge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 23:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=cH/ZhD79xLbM43XtiGPjk2hwfVXJAWud0BWM0vN0ug4=;
        b=kNB0kKi6yDk7zp2oKXdrj1rThxweejfWU8hNFOTk6VZTIc5+k8nGgqD9TGwgs7MaX0
         aCP11/dkdLzgO5vixA0Ujz61V/gstMUA8wP90SQIZafYkwh2aDlfakdf8wZHnfpmkO/6
         mxaYZ02q6/EQYXX5r+DoNvRUowQ69WravdT75RbYYLPPD1JTBMF6+FkUJ0sUHnmidrQg
         0Ab3s8ZiK/8/HHbSkIk8ler5HjAV0+4hp2WAoOzxo5ujeSKwydRtVP99nj3V5+GyWEqv
         +VD41zcl2xf4OtqXlRhsz6nfk22BIW1MuS4w2rRD7wX951KwwQ2DIr2RzersGJg/hKX6
         abtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=cH/ZhD79xLbM43XtiGPjk2hwfVXJAWud0BWM0vN0ug4=;
        b=bQ6d8pq0KERAMcGZpoXlfyC2UOGEwEHY5MpNFvcH83yzLlZCxL478nEO8eG8FRKryL
         x5UaAZOedX7bM7h9gDdxfyq9TNWlAMDMsmq+gv0kfAcc6oztgojh7fXKWugwjnCdw+Dr
         JVWEw6G8XSB/fhmpUjmP3x6W+FQnUomvvmIVfVqwF36E/kAKL6eDOW+HqaShE4/hBwOD
         nBXoMKXktKzfKY03zUkZd1WrTzCTMhjNKmTJ0uMVe/Q2DhUHwMhx6qSDnx9mxrrYsLqU
         lHqn79/I2j0zSSt5G6wbXL5iWuKLihlxUS0BJSUa3qfpxafX/tbgtAmKBWugETrQBbdi
         s4RA==
X-Gm-Message-State: AG10YOQSUBsNAlMf29sKlbRdSg5/NsOBGERBXAqqb3WmGTN1kZoLnakvU8ePCk9sFgo4YS7c3/HUuhsI+nsaXQ==
MIME-Version: 1.0
X-Received: by 10.140.140.6 with SMTP id 6mr40674699qhm.29.1456213857456; Mon,
 22 Feb 2016 23:50:57 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Mon, 22 Feb 2016 23:50:57 -0800 (PST)
In-Reply-To: <20160222211342.GD5849@kroah.com>
References: <20160222130735.GA26820@amitoj-Inspiron-3542>
	<20160222211342.GD5849@kroah.com>
Date: Tue, 23 Feb 2016 13:20:57 +0530
Message-ID: <CA+5yK5F55-q9-z+i0b=QYSPMb+oLfmd7C-EYUWcmk6ykvrHduw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Replace
 simple_strtoul with kstrtoint
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 2:43 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> max_t() is no longer needed here, right?  It can just be max().
>
> same for the other use in this patch.
>
> thanks,
>
> greg k-h

I'll send a v2 with the above change incorporated.

Amitoj

