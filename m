X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:3919:: with SMTP id g25mr599714lja.248.1585565104748;
        Mon, 30 Mar 2020 03:45:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5e90:: with SMTP id b16ls520246lfq.4.gmail; Mon, 30 Mar
 2020 03:45:03 -0700 (PDT)
X-Google-Smtp-Source: APiQypKu/20AjVw2q/PZix97zhoLq8OA2srwjrDXUJNBt8c/PJN6ZREX60YhBNPvRr1IsMY3qI7H
X-Received: by 2002:a19:f606:: with SMTP id x6mr7591497lfe.44.1585565103215;
        Mon, 30 Mar 2020 03:45:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585565103; cv=none;
        d=google.com; s=arc-20160816;
        b=fycAhBW4Sy6R6Yon/UVlB7T0qI4lJxU1XBA4YX+ecZdoXBOKxMqibqrXln1RftgspN
         Lwrd0F2R1aBCew7MO+79iBM821F3I8O4HQhLF4AZr91rrNriZiF4jc+LGu/dBd/o/oob
         k0EfzRRTFaAEqJh4kNEx5xNlflCmnq+eO5CV0wPZpntwUstHXiJDdQpHzG45RCmyuWRc
         sfbuEAWfAr73xJIpwzzIdLoChWMSQK2lz3uzRFpykV1kKA2Nvs+uWAIu7HRzk35TX86F
         04cml1C7lJ4q5RNbOkJZgzJc6dSccPrgQ4+IP9x/Sako0WtZheqpeIMo4sAbFxfSaPmR
         ZUAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=6JoVxsbr/3XZ47rTETlWSPGLxG+wZEaiO6OLLFFeFi0=;
        b=QHEr4S2xBdivePsF9G/hTWsPm4YraZhBmyPo5eD0LHmiCPxN6/79c1q2ZoGt3wwdZm
         U7vm/5MNjUBLrk9/CSFfAiLtjqNx6SQx9VZQXCDj3FBVbkE77QFPpPmbG836G6uYwrGU
         QZMMHZ3XG3PDKUwEH+elNAk+fdbg6elBobVeBccpYSwDvRiTxrno7CoZNKXK9rg/5t+4
         dy08uy+kxx8yxqiTCMICiLaJi02sKDn0kx1hPBsZ15+Ztn9lNO6iBvIlMxwFJZ36kWjc
         c1DZqTFIYi0GXNDG1wBLKEvdXGRfLvz070rrRaC0EMp9qORt2QQ45hfYAgTDTyC7pLAx
         mnmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=siWdkE3h;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id w15si251997ljm.5.2020.03.30.03.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:45:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=siWdkE3h;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id 26so15617777wmk.1
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 03:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=6JoVxsbr/3XZ47rTETlWSPGLxG+wZEaiO6OLLFFeFi0=;
        b=siWdkE3hD0GeeMbceikLYO5BxFilHqlpdLK/kuRnZrU8pYKzEezwaA1AQoX3/v6v5H
         0BxBry2DLSlB6BQHpwmP7TjcwPgz7Zrg2E107voFrsHMNH3daXRlhPzknKzHjT3Ogs7t
         o0hBpuVULlwi5kpvx573GLq1KXJnAT7xqRPvjBzqGOllbZIQdcfiujn8ANKEGRkGDZGh
         M4q0hmRBKQt/Vup6rydJKORe0BrV64v7DRW5Bx/cR0zXAlEiHlUXUDE59AcBqPiDIWmI
         MSI4PaQo2K7l9DW+2HbSm83qJM9OwACKQlEAz1kpJYqK5e9BiNQKqGMc7ChTDJApD1fW
         6PpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=6JoVxsbr/3XZ47rTETlWSPGLxG+wZEaiO6OLLFFeFi0=;
        b=uS4HYZwfWVKlyiosl51OPpawL+NMq2fAOtSEx8BiP024PeldiX0ZBC6TrKxtbU72xC
         7SCVSdcHDdnSS4LUxsqztd7WD0oGuINiw4cEbVbankpRVVdPo+dr/BAq5cnjI9fFhC9/
         bQT7j49hF0y70xwPvcb8mchBproN6CfO6rrUbCcs/gWC3BwHHg54gZO1/9djkjgHkuiV
         yJbvKLHpXqYwdUXoV6LEqjqCPjd3BO0xULfmTu55jv8B/Ik9w66NwZJiD7hNWNM2iGZB
         peO77pT+T3teLNAjgmkWvrQ6i1dJ2vaIKvvZxIUVzJYsO8YOMlY8Azby3pqXTWuo7HLS
         q4aw==
X-Gm-Message-State: ANhLgQ1nPaAIBDjj+Jfn8dxQNrgl2XlHGdPnn3YV47I0Yff3sae9TEF+
	DdoSEYNI9s/i4P0/+jA/zjTs5eUVjDc=
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr12848605wmg.151.1585565102555;
        Mon, 30 Mar 2020 03:45:02 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id x18sm15462890wrr.2.2020.03.30.03.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 03:45:01 -0700 (PDT)
Message-ID: <1e4819bb3fc9377f19755625518b0cafabaed509.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] Staging: kpc2000: kpc_dma:
 Use sizeof(*var) in kzalloc().
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Date: Mon, 30 Mar 2020 06:45:00 -0400
In-Reply-To: <20200330030433.4b924c5e@elisabeth>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	 <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585143581.git.jane.pnx9@gmail.com>
	 <20200330030433.4b924c5e@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> On Wed, 25 Mar 2020 10:26:37 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > kzalloc(sizeof(*var), ...) was the format been used
> > across the driver, which is the preferred format,
> > but missed two instances, correct them to match the
> > coding standards.
> > 
> > Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> > over kzalloc(sizeof(struct var)...)
> > 
> > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > ---
> > Changes in v2:
> > - Update the log message to be more descriptive.
> 
> It would be nicer to refer here to the person who suggested the change,
> if it's not you directly noticing the problem (you can just mention
> them by name, name and surname, or explicitly say "suggested by ...",
> "requested by ...", etc). There are many recent examples on this list.
> 
Ohh, Sorry for that, i thought this tag is more of a code related
change. since being new to the process, most of the time log messages
and subject lines will be commented on to follow the conventions. which
i thought is a different case than changes in the patch itself.

Sorry for the inconvenience,
Thank You

Sam


