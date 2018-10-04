X-GM-THRID: 6608144919941873664
X-Received: by 2002:a25:2204:: with SMTP id i4-v6mr4291405ybi.54.1538678462597;
        Thu, 04 Oct 2018 11:41:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:388b:: with SMTP id f133-v6ls1508381yba.10.gmail; Thu,
 04 Oct 2018 11:41:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63/VFcnQs+dzHWeiYFFugupETuEEQBO/hQVElVnce/vLtuOud4qNSQ8D1lZHR7s4pZV7aF1
X-Received: by 2002:a25:d24b:: with SMTP id j72-v6mr4233488ybg.96.1538678461710;
        Thu, 04 Oct 2018 11:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538678461; cv=none;
        d=google.com; s=arc-20160816;
        b=devtK358CHsmkd50M8apuECkws6M7IOr0hN+pzFu0Ky9acDKeHHPmdXeAUeQY8uRo+
         PXxLN+E7fPcjE6JTzadaKddZzfP6ZYJtrR8DXXRba2YBIrQfYNYNtE1OJQ+iFufFGvDw
         vD382LbLns8EpO09vCphf5jl15ctE56eEh3uEXIIK7vteuoSaFZLPeeajN5Y90UuspzO
         jmWKb/lZTJC2ZVKEH69HO7qT8ewsbG7F6WIhd7iqpFc1dveQbCWshL929Ntkm3IuHb6T
         BZx8YOhoD61yCDyPpGA5McQh7j8eL3yuQ7dy75MrS+zUoCYMH7NQ+IgAH90A0jXEdIKH
         zFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YVTnLxZ2K4NNTaq1HfV0Wd4gjaz20uAy9KQWXrDJi88=;
        b=sCc+K3DJzlY96FYzRlliobOTBJSufKFQkZTR2PI072/qvAyw9VElm+fVobhhC0SBgb
         rubKg75YgE0fiRRP5R7oAZ+7ymiZJ6EBYND0Ktn/lVClMSjMQ2hKB/JKsyC+TAeLmT13
         OvLVu1oA8AQAVySH/h9EeRXjGbm3owxaRLJbFcPEHb5TRbARQ6MbDiW2vykEZz4tzkrp
         2z4OpF2Bb1KZXsPzsETO2vuAfSREE5FSTjjvN2rbntRk5HDEG22oXmLcrQTZiaIRLAq5
         mtutm7V+2pmlbAksZNhdkhC7qYKXo693TlkEtP9LpeMc3cDHYUOf00BgOOQ2vbJWUgsZ
         Y/WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bud9uKO4;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id l21-v6si165318ywb.5.2018.10.04.11.41.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 11:41:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bud9uKO4;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id 80-v6so3539280pgh.10
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 11:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YVTnLxZ2K4NNTaq1HfV0Wd4gjaz20uAy9KQWXrDJi88=;
        b=bud9uKO448dC0QF1tY/ht4HmlbaykplCg4SXxlNRZOcLJ04vlP+mtcv6zxNUa7EOIR
         gUoAUn9IQNyf17aj06InzS++qh0xbEJUwYdhAAgozHkLtT7EmJEb56Fs7DA7KZmCifOd
         yyDPWRMktpdnBHpqJdupP+MShmKf/hu4wad5aEuJEIi5bamMeSE6ewj8i1o0/nDhhEdY
         bG3D05XjsGEBhm4enVvMTQfTjKsaUgkCMINlKECQQtKEPoZisOAJxgg4kfjUm7Yre9j4
         Ppx5FUMsbUrLap3Mh61kkshCzPrJaJOdJU+ROonZdIyO3sB13bzL1D4Fjfhvt2yiOH4D
         o4rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YVTnLxZ2K4NNTaq1HfV0Wd4gjaz20uAy9KQWXrDJi88=;
        b=aGmQDo50G2AJ3YxNiXCqwKBc0CxsEtsBfffx1X6FEjQ0AjIQ71ma5H6/ILOZ5XyFpz
         ejGhyDlRVqFtVgSIXbCo470Pcq+YtDg77m2lZf3aA+Dz9AT/HvQ1bLQSNeOnH90gn54U
         Q/KR2T7tJ3z4kOS/QQW3MrXyBhNHgH6qQ6t03qs8vzbD7fthTInCu5ir58GDrnEzqGMB
         9/+gQrP5j8vMt+la/DTvyPr8K68SidJE14Mvkg/kZ1uBBDBkOd2hGkJ7FC/lGkfEV2Hx
         oRbKMBUFhWF1W5A1G/ecay78JKu5ylzvYpxbOapWgZphW109/Ip5cMY+m0vc7NXpoVRn
         oK2g==
X-Gm-Message-State: ABuFfog1TM9zYTw7s2HoeVxn5ZrMwoAQqIQ1RvCJ/qH1aAxTP3TsBaxT
	KIxChao7Qxj8yA/f23/lMuQ=
X-Received: by 2002:a62:c60a:: with SMTP id m10-v6mr7265856pfg.15.1538678461212;
        Thu, 04 Oct 2018 11:41:01 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id y24-v6sm11339251pfi.24.2018.10.04.11.40.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Oct 2018 11:41:00 -0700 (PDT)
Date: Fri, 5 Oct 2018 00:10:54 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>, vthakkar1994@gmail.com
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: fbtft: Prefer using the
 BIT macro
Message-ID: <20181004184054.GA7026@himanshu-Vostro-3559>
References: <20181004170252.GA2688@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004170252.GA2688@armorer>
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi Mamta,

On Thu, Oct 04, 2018 at 10:32:52PM +0530, Mamta Shukla wrote:
> Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
> CHECK:Prefer using the BIT macro
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Send the *whole* patchset with correct version.

Maintainers won't have time to cheery-pick your
patches and it is often difficult.

So, whether you missed a comma in a single patch
of a patchset, send the whole patchset with new
version along with updated changelog.


Vaishali,

Could you please make that instruction bold and clear
about using `get_maintainer.pl` in the "getting started"
page that everybody is following ?

Greg might not be terribly quick with his feedback, and has
other important obligations doing releases ...

Plus interested developers might provide a postive feedback
and also get it tested(if there is any bugfix).



Thanks
-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

