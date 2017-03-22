X-GM-THRID: 6399870143121326080
X-Received: by 10.200.51.164 with SMTP id c33mr5806475qtb.85.1490190359914;
        Wed, 22 Mar 2017 06:45:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.218 with SMTP id s26ls2186523ots.17.gmail; Wed, 22 Mar
 2017 06:45:59 -0700 (PDT)
X-Received: by 10.237.57.168 with SMTP id m37mr5820385qte.65.1490190359435;
        Wed, 22 Mar 2017 06:45:59 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id c124si103246vkh.2.2017.03.22.06.45.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 06:45:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id y16so10595507vky.1
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 06:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=HGMKfjTqefKgdHmTTS1iS+6Akul9eImjQc7cqNPL584=;
        b=WnfofazFW/LuHoocpPBblVE0hDpJPQvNgR9bpaoIdcNqxe/kp0sE1oQBIGYbJKa/Ev
         Jp/3bygQ0DIoOarHthSm/l/9BWn3MRK3kuZQYv0LYM6TXemBq6k5/vMvqhKsQCoiuBYY
         7v8m/INdzzZl8d/4QPS5FdwscXP+9rKNDbJU8rLnR+QSrcAVAoAaPUiiH1IamxtaqvOH
         Bg8mRdbQywNSCbF4/zGygS6zRpaBtoZF7SRGEuwfKCEQOtS9mQQvdryx4v9PSyfD0H2/
         VT+Rnc9SzTa0mRbm+73G2plLxAVBBQw3MlcR+JGf8Kr/2DBaFgwQs5qho9sRcCY9JfNL
         BdvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=HGMKfjTqefKgdHmTTS1iS+6Akul9eImjQc7cqNPL584=;
        b=qVeS8l6G0gVFXz6m7GoeAly5ygFwxACioCjEQqA80tbw1hTvAoGTPGF9Qj/LuLfIDu
         N2ExCpH1QmQ1bQwKRQWZY9RsPm5ya26aH3cG6nhVfc9Y5dloy1nClkoSLvjkOXZl5TUN
         mSUod0sZCSalSw1mDR7aWHMNH38FOtQjWM544TFhlgplqfA4DlCfBfBtMeH9cjD5hdvm
         zRG1Pdfw3FVcGzFYyXb0Y0b9dEQKjJlRCBmKoZb3CR56ULpmc2I9lvpyGaMnFDCp9ZSv
         lq51KM/67gNiIY96qI2Zb15SlPLbmUgF1qNwYsUE/K7dLRca/vt0mmhb46L8A38aXJoD
         jJDA==
X-Gm-Message-State: AFeK/H2HIjktFhJpER882h26EY9ylUo1jRiVUkQgR834fw0q9fZ6MfRs+XTXIL3tBs6NZWBefkew88QbMv3TCg==
X-Received: by 10.159.33.144 with SMTP id 16mr8789279uac.28.1490190359142;
 Wed, 22 Mar 2017 06:45:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.75.7 with HTTP; Wed, 22 Mar 2017 06:45:58 -0700 (PDT)
In-Reply-To: <20170322133821.GA21278@salvia>
References: <1490085879-1827-1-git-send-email-singhalsimran0@gmail.com> <20170322133821.GA21278@salvia>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 22 Mar 2017 19:15:58 +0530
Message-ID: <CALrZqyOf81_Qe-sQfnqwDk4-i+R9YnB6+FOCJEZ1Q3yt6A2f3A@mail.gmail.com>
Subject: Re: [PATCH 0/5] netfilter: Clean up tests if NULL returned on failure
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: kadlec@blackhole.kfki.hu, davem@davemloft.net, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 7:08 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Tue, Mar 21, 2017 at 02:14:34PM +0530, simran singhal wrote:
>> This patch series clean up tests if NULL returned on failure.
>
> $ git grep "== NULL" net/netfilter/ | wc -l
> 461
>
> This is cleaning up just some of them, we still seem to have quite a
> bit of them.
>
> Main problem with this changes is that it creates lots of work to
> people backporting patches and stable maintainers, I remember that
> they have complain about this.
>
> Either way, I would prefer you fix this coding style issue in one go,
> ie. one single patch, it will be a large one.

ok, I will send the single patch.

