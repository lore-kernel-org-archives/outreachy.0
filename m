X-GM-THRID: 6341806933314371584
X-Received: by 10.66.158.102 with SMTP id wt6mr3751472pab.65.1476566990725;
        Sat, 15 Oct 2016 14:29:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls11321905ota.26.gmail; Sat, 15 Oct
 2016 14:29:50 -0700 (PDT)
X-Received: by 10.31.169.22 with SMTP id s22mr4797502vke.34.1476566990318;
        Sat, 15 Oct 2016 14:29:50 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id z76si3762793pff.1.2016.10.15.14.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 14:29:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id e6so63528941pfk.3
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 14:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HFGp1JLA5iHGZSAlyuLaIzcqmZZflvlBfpAG4ryZyAI=;
        b=QQHz0NU9ISeTR3Jl8KbSUYodo83/p55KiSmaiejkzREIJStYZJ8pbWyhikupY0Bm3w
         TVgbIkYMY0qjXmOmom583nT524T/zxN+M6ig8yfM5tW9MA0d7hTDYhUAQNMT8XwAt5er
         0T+X1ejtf5w/DJ4H5YjpoVUhK5ETv4vF8ZtNZX5TKLmPq8/S1yk2uIgAMYFSzDOe26Q7
         vxr0juk08YjLGFFa8lW8zW88QGhgsEsM5I9Lchm80OiGjhgL8kshe4s8rNFF++bZxUkv
         CVT81nA4Hu0N+DbmqeMwG39BtuqjBq3Mhz+Ke/NGSqnEG5hz8y9QW76ANhDDtrTLYdy+
         YReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HFGp1JLA5iHGZSAlyuLaIzcqmZZflvlBfpAG4ryZyAI=;
        b=hkR82I9tC4u/PQCX0F1uWXzS8BgAXAKNfAwB/2NA1uPDdAeNLjRYbozV7Ehf6d8ipR
         GzuQeiYRmCTdMYob1cj5bs0wDZQBSSY+woWx9sJ8Q7PZ3B1mAxtfk+VuNkvJJZGhkiMD
         Xzg7L+bqi7KxSc9PR3Rj6TwUlO2fEmJn+D+WYaVz5QfwNv9zz0qwuhfsQ917r0aPCJhh
         Zw44CpUqxl8OOtxyScfX+9mEx/pW/SdqATgtyk2M2NDr9O092fBTdHcyps61hf/9bRxR
         ozshAmpGzE43uM0v5vSx6ZIrSMfQVn0E/jxRpwj+gw0ykiY/OSPmkwbSlrpI+gh2b4Ps
         AS9w==
X-Gm-Message-State: AA6/9RnDVGIZvIx0vtzqXE+QWaz3VnEWGqAetbfaId6neIh22f32jeMUnUfPvz9MpH2GJg==
X-Received: by 10.98.30.193 with SMTP id e184mr27760998pfe.104.1476566989961;
        Sat, 15 Oct 2016 14:29:49 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id bh6sm1353854pab.14.2016.10.15.14.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 14:29:49 -0700 (PDT)
Date: Sat, 15 Oct 2016 14:29:47 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: schedule question
Message-ID: <20161015212946.GB13776@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hello mentors,

On the main outreachy page it says that from 10/17-11/8, we should
continue to contribute to the projects that we've applied for. I know
that we can keep editing the application up until 11/8. So we really
have until 11/8 to keep submitting patchsets and tasks, as long as we
submit an application by the 17th, right?

I haven't sent in my 2
patchsets yet but I've gotten the 10 necessary patches accepted. Should
I focus on submitting tasks for my first and second choice projects and
do the patchsets later? Julia sent out a msg a little while ago saying
that if we haven't started on the tasks we should do that, and at that
point I hadn't done my patchsets yet :/ 

Thanks,
Liz

