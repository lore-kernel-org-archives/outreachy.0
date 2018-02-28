X-GM-THRID: 6527234917858803712
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.98.251.4 with SMTP id x4mr4019812pfm.58.1519818729540;
        Wed, 28 Feb 2018 03:52:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a5c5:: with SMTP id t5-v6ls1666090plq.2.gmail; Wed,
 28 Feb 2018 03:52:07 -0800 (PST)
X-Google-Smtp-Source: AH8x226ANGrDPLkQYSePTgvF8eJFGlesCUzcy5CqF63JIiveD4kr5W93BVmMBrvMf5EApuBXYlny
X-Received: by 2002:a17:902:2f:: with SMTP id 44-v6mr4128310pla.41.1519818727943;
        Wed, 28 Feb 2018 03:52:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519818727; cv=none;
        d=google.com; s=arc-20160816;
        b=tvD+C2UTkqnBN81t6FzCco2aPdDGob0ZarVnYoHkuX7urO9StRm5kwfUIecfc9+5Cg
         wWJrU10cBLbeysjrACDOUpvKrmdA2aImki9QqqiCta0ZbP3EAnPNOfnvw+vThPQ4Jmeb
         5XAqcFisMkoQj2Um0dMqsc47FEHnElakMfEX71F2Zcmt69mRqYOSi8F8WiMtNVp5lFXt
         0oXjy+nMDMxZcd8/xe1j4BcHgGiIQg4d636vHcdw1bswuLtDZjv8KVlgwAx2yqLx15Ug
         VtPbn9lpl1AHbndqWIsV2JZyE0AUwANRaOqgy0nq+nIEfSUz1ECyxlzuKpXUaWrNt7sd
         3VJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=uYdMy4a6tSM9dnO7sNU5bNniQSIe4X7QJxx4RmQ1xU8=;
        b=nd0C7QCWqELVbDquDALGVdIg/AqHjrULE/3TpwIIpqoI3rPxtsfnnMZz84N1UHD1vX
         bfNT/KFmQrNc0HLZI6auXTD9QR5ZxXULIRgUKEBXp7WnJ/wY2kpLwE2gDZT0P21qwJub
         GjOOiIqKtXWHiczQdrdiWFcgecfxfFlwNmhBJbRT+CWbdhKrWboCtVYfOous0zCVlilN
         okTirhRInaSeIB7864zVm2Z9Qjvor07MajufUwadIs7RxsU+Rk066jqVeUiuFQvpvF5m
         TG8E3QTdHyhlbaQvpkOo8v2WLdF4owBKHHKlk78BQMMOp7zroeqVq09rLr2htTAmYzJE
         6G+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Rlc3i6cE;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id e70si72148pfb.4.2018.02.28.03.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 03:52:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Rlc3i6cE;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x235.google.com with SMTP id q13so893173pff.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 03:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=uYdMy4a6tSM9dnO7sNU5bNniQSIe4X7QJxx4RmQ1xU8=;
        b=Rlc3i6cEeBPixw8+jR9P7i9bSN7cYh1uJbeNuYEcif3mh2QlszjZJmT22GVmV5RYfl
         5zXQXjdWyzP1zQWYRxXoZIJd60DqVKWVjnaUmDoC3+14q+3nJcb0Hg3jBnK/rX9bbMi1
         8484BV1+kCJOooW7jfqDNgqmlkW4VhgehZSx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=uYdMy4a6tSM9dnO7sNU5bNniQSIe4X7QJxx4RmQ1xU8=;
        b=Y0XbNycmaqDlFwtrYhm3rZPCTGwk0iIlUjt1VZgkkbI+GoE1woCygai78SYOBBv+PH
         S2W48nbH0tjU2qswYU5ve2TPHxnjohOArNfiQfzET/taeZTRpsG/7JBq2tDex70SSNa6
         KrYtZ3QF4Q275IcwCRaGSlOnUmFDeHjeM0c92OwAB+2EeLisCqqKuwidbUMAYSJhXZE1
         4Nm3rS3ey/AJup2sNnf12Y+Parw7s56//CwOUHmWvUvg8pG3FONur42wzUp0NfHILD50
         cmnuhkkl6UZQoh9vrcgE0goQyDhdHv0qzKaHLXT8uPB89fTu6IxamRb14YpzQvQbPM5P
         ZLxw==
X-Gm-Message-State: APf1xPAOWIkP30e5kOq6rc9GvIFZ0TMNaxiEe08prSnsaIiCxe63EiMc
	2uTBt6i/5uAYAasfoBW3CHI2IbG3
X-Received: by 10.99.127.90 with SMTP id p26mr14100796pgn.268.1519818727335;
        Wed, 28 Feb 2018 03:52:07 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from DESKTOP-3NPFG8T.localdomain ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id t85sm3518689pfg.159.2018.02.28.03.52.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Feb 2018 03:52:06 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Re: [IRC] How do I join
Date: Wed, 28 Feb 2018 17:22:03 +0530
Message-Id: <1519818723-79-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1802271511460.18318@hadrien>
References: <alpine.DEB.2.20.1802271511460.18318@hadrien>

Thank you! I am using Pidgin. 

Regards,
Nishka Dasgupta

