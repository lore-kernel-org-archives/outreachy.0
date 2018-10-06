X-GM-THRID: 6609200682225369088
X-Received: by 2002:a02:6a07:: with SMTP id l7-v6mr12757099jac.0.1538850465306;
        Sat, 06 Oct 2018 11:27:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d41:: with SMTP id d1-v6ls3703970ioq.7.gmail; Sat, 06
 Oct 2018 11:27:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62T8KfeX2TWJt0zRDzLvPHEd69SjkTl9hRRmR4I+AtHz0MzM1DVx1hrwpojqUCUVbI0sz/P
X-Received: by 2002:a6b:8d94:: with SMTP id p142-v6mr11356748iod.25.1538850464512;
        Sat, 06 Oct 2018 11:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538850464; cv=none;
        d=google.com; s=arc-20160816;
        b=iup/lieuSm8mNyeeZ5qUEmcCTVB63sMspfgDNTRpJOUmnv9DF0suLW8KouYxOdZB6x
         JMLAUjeSBhrM/LdfuDw1GDYCMrqHWWl7B+z9wMqvy626zC+2sSuco/nAveio7UBVGjpT
         oiOVbFMwg6e8wGY4xUE74ATKjJXzdiDEMSTHCbz/dpihWWL3VGnvPS0AYyZeoyOKvldp
         jq5wxxWf4GYAvFkWgAW9R6t2nUxepRYrWi0Zi4XiYhKZeG2RcU+0elkGIGqzqwEjblRW
         5NeF6JHhNLC0vTVaC414DyY+PV5DG94oR0bP1nvNFRaAHo5Jdc0X56xtjC8xiNaQKHAO
         2tZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xB+da0J5E11BhwvqW84q5EIyv0pZ6ia/TfnT7MY0PCQ=;
        b=PkU+0bnE4Lj8mXXzcpjX2NmoLvYIf9GBIPX7PW9YM6KszmG65zU6rEe30VImpaSFqj
         dvUWp8kLao2ZI13qJqwRSpS7hzF5hvnRIKPGoQrjui/z/DsCHgeten7LnfsbXEcXkSjJ
         HOxlZDEdIuj5HwA+8KSlgufLkkQvSOpK8fwKAOBMdKMXdlqnwlUgCeLxQGYahNgThHzT
         0PDVpk3O5DmaFmnnoDe0py4nF7WJdVxvDHoMwHl35GV5GiaKn9FQgmFuDpXrzyWy/P4Q
         bah5V6ludStM745G+6oL1RWgsJsOQv4OheFFkRCw1Luij12mPtbpzPHQSiAVTw/Duy8R
         lI6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDx7GXG7;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b133-v6si323121itc.3.2018.10.06.11.27.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:27:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDx7GXG7;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id f29-v6so3676361pff.5
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xB+da0J5E11BhwvqW84q5EIyv0pZ6ia/TfnT7MY0PCQ=;
        b=XDx7GXG72esVs3yYmqlvP08p+28f+OGrwMWqKGPhIeBEtUCqJpFJ+yRn58ziihppgr
         sqf2vg6rFrZXh7CXFT9aBGT0lnD3z1JJf9NscjRoDzL9h8MDldyGF430eFNL9FAocXEG
         04c15T8UzLhlSiT/7FVfxINNHD0VQnv8Peykgp1GvB0i/eA1Dk4Q2RTVwbZKt42JTsIV
         yFPDsJdZJ0iWMHRJGgt+c7Aw3SrExsLBIdntStU0HaqWIQcBsm4lfOTeEOr1tOuGbyHg
         J3ABIk9PKBiAtRwS9CwhZi93l1dm4pqgLTxYYNyn+r3V2A54OchzkCOS0Y4leq64Ir0T
         PfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xB+da0J5E11BhwvqW84q5EIyv0pZ6ia/TfnT7MY0PCQ=;
        b=d37JcHIVOKhaXszXqF5U7eTw18kb9V5JGzVXsbZOkuTxLSAZdDiqA1ZHyIgz89nsoe
         qejeXY8cFEHlVbHJdWbRMvJffqlnu8aLLboyWQi+N5SfIARc67yYlsWrUK/QPH1t225Y
         ita8tjKSPIeNHcqDtg9S3HeSJh5AHF0Ai/E0H/Qj9Q8OnZc8IvkqT2KrbFWfq42D6X4V
         FwxkjgjpHXf8M5xa8+FoASycarAg0BRsYVuELCCrE9W9DFyXzlAjabmuUa4aT1rWe+jU
         Mp3Uo1EtXA09EU22/T3Q3Q24ing2dtnBrh76r35XnD2ZSfvb7gwo5droXLjfNQMeqH4r
         ozoA==
X-Gm-Message-State: ABuFfogMaKa7xsOJLUxXVox4W+IYxv224aEuEUFurDxkcwErb0+l/Dgh
	ec4tL0k0nYnC2Nny9SbYImg=
X-Received: by 2002:a63:844:: with SMTP id 65-v6mr14721463pgi.144.1538850463686;
        Sat, 06 Oct 2018 11:27:43 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id g65-v6sm19298571pfg.98.2018.10.06.11.27.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 11:27:43 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:57:37 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
Message-ID: <20181006182737.GB7070@himanshu-Vostro-3559>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175555.GE6283@himanshu-Vostro-3559>
 <68d61f32-294d-6056-7b3d-a89735bc539f@gmail.com>
 <20181006180243.GG6283@himanshu-Vostro-3559>
 <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 11:42:16PM +0530, Bhanusree wrote:
> > Then please state that reasoning in subject too ...
> 
> > Subject: [PATCH v4] ....
> 
> 
> > ---
> > changelog:
> 
> > v4: corrected whitespace error.
> > v3: ...
> > v2: ...
> 
> I made changes mentioned and sent already with Subject:[PATCH v4]. Am I
> supposed to send it again?

Ah, I see.

Subject: [Outreachy kernel] Re: [Outreachy Kernel][PATCH v4] staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line

You send the patch as a "Re:" as you forgot to use `get_maintainer`
in the first place.

Took me some time to figure that out.

And I think this is not the correct way.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

