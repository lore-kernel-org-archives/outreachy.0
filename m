X-GM-THRID: 6609200682225369088
X-Received: by 2002:a0c:c915:: with SMTP id r21-v6mr12568301qvj.31.1538850767883;
        Sat, 06 Oct 2018 11:32:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e0a:: with SMTP id p10-v6ls4302200qve.6.gmail; Sat, 06
 Oct 2018 11:32:47 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62Y/Z7IOaE6gFojsFfZO7Vxecg3SyX5bZ/jdCc5jxHVo6dwv58mMdt/uUItWH9NyGfuEJzu
X-Received: by 2002:a0c:9468:: with SMTP id i37-v6mr12228539qvi.21.1538850767421;
        Sat, 06 Oct 2018 11:32:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538850767; cv=none;
        d=google.com; s=arc-20160816;
        b=FC4+POoQIG7C/U5FLhQFWFJxEsmHr/wdq/P6GgiFP75T8FgCUVZHH9D/LqrrUwzFmZ
         7mAirLCuNEavAooFEMiY57+JWvpERS5LORR5bbjwuBOY+tq+AsEFHwPeNjys6ynIiG4a
         rxSAy7Lqxlp6ccro1ECWFEa3Ei0Bazw5Nkz/hEAU7j1a5fNDBfINJpMtxj/uwYZWJx2/
         cdyHXnbEs1UMqFI7WCtSuzL7t+gbA/O1ZNp5oxZcBE14bb0wtSBoXeTTLiYxUD3Z5blf
         UvYN/hUnWkw/1JEhUtejoXqPT8zhJrIagfzwEFeghgNzFLaikN932HFCb8+r8eSamK2Q
         a/yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PioaUYWmgegpTMDe9hpe3kqY0bduytVBy2Mv1O+xRFU=;
        b=n75tXA5Ink2BthzJR6vhAQj34/3rfIba1jcON7XYTprdDKjJXhWTo0TsH6MwRAc/JR
         IQVSy4q35eIv3GJxT5Dupqqr9tk4Km8/ciSfpnj86J6ENfQYLwRlMvuSA0Cv5hWp+uc4
         UfIdg3u3sjjUMxyF0HOw23gewC+21pA7+JhLDTDQxQM/79yDB5qXYTPSr6FEWF+95Zuc
         NLkZDrdznbRQnX06dCs2UlCUO6tjC8cLsQVMb633YhV404oKLyfTRqF9/tJIk1Vp5sGv
         s8+NORXn5EtcgUex0GRz/gIFvyPSn5+rL7OLFXCIdoj4h7fpzMmkpmLjgz/+KgDHoijr
         wttg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+X1DiQh;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k8-v6si659414qkg.3.2018.10.06.11.32.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:32:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+X1DiQh;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i4-v6so6088849pgq.9
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PioaUYWmgegpTMDe9hpe3kqY0bduytVBy2Mv1O+xRFU=;
        b=l+X1DiQh9PGfAktVE28J7/z4BKC7TgIYIr5IbNtjg6StB521HORRGKffC1WNGo1eFU
         +CT7L01CWz1TTY0XKwoF2DhxIf8zNNW43zfkMebjbPyVipYY4vQSb49I6GnsiPcOpeui
         vuaetzNv/CTH2yl0hzy9Cjd+77bCQN4jQFvey9sd78jS8Xqmsn8/SZDfBlFsGjEAyHSF
         9SLkgYJkQS46+/gM7PxSfBIZzI/iXz9A4oeXG0UmhxW8xLSKQKJuFrmglTyf4HDjiSIS
         8UUoqqSUZdB0cQMgDq5183afYYuUhKWVQNSNvJofYe8MP45mljZDGx/wlUk/Nxlf0MOZ
         D+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PioaUYWmgegpTMDe9hpe3kqY0bduytVBy2Mv1O+xRFU=;
        b=NP6/nlEXEUZ+P8WBCDhDIMkY5zh52j1w/PpzpONyZ1GLF+aeG8N5wztMJe2V9TCgap
         5q08GgurKNEhnGWQBQUoKXyGD5TgBSi/cgkf1jPx4cdkjfZNrsdJeoPxYFsbqu/2xLX9
         SSUTZh/uLPBDzIZC/oAiJhdoTFT5jrep9VWq9p5/gRmZMuv00mfQ6Jz9l9dc84J78VCK
         JWJYsJOXHvAsMgu2k9LUlbJ9+AUnLeV5py/5Y6SbQs0xgLwjflhjGP5k6CaaXR7Za3WF
         weyziK0r56zL5ZdJZvaRrIX55eU7+nxbhqET8aKtYPIPVVNbv8s8JGkNnCep8p0/BEBy
         JJxg==
X-Gm-Message-State: ABuFfogWaB+QriLZ6k/bwcdUIoxzAQ4OnVesGrptlaNh5iH+tFPBGO6t
	3WLsoHXiui1XCU/bZE40gXE=
X-Received: by 2002:a62:c8c3:: with SMTP id i64-v6mr18054700pfk.183.1538850766480;
        Sat, 06 Oct 2018 11:32:46 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id r76-v6sm6780482pgr.11.2018.10.06.11.32.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 11:32:45 -0700 (PDT)
Date: Sun, 7 Oct 2018 00:02:41 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
Message-ID: <20181006183240.GC7070@himanshu-Vostro-3559>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175555.GE6283@himanshu-Vostro-3559>
 <68d61f32-294d-6056-7b3d-a89735bc539f@gmail.com>
 <20181006180243.GG6283@himanshu-Vostro-3559>
 <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
 <20181006182737.GB7070@himanshu-Vostro-3559>
 <c1c8d1b5-9e9c-9797-bbcc-4af9e9c2a826@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c1c8d1b5-9e9c-9797-bbcc-4af9e9c2a826@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 11:59:02PM +0530, Bhanusree wrote:
> Please let me know what to do on this ?

Send a new patch with v5 with changelog.

And don't top-post!


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

