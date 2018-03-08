X-GM-THRID: 6528044448013615104
X-Received: by 10.80.141.16 with SMTP id s16mr7929266eds.7.1520533414602;
        Thu, 08 Mar 2018 10:23:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.173.41 with SMTP id y38ls1282192edc.2.gmail; Thu, 08 Mar
 2018 10:23:33 -0800 (PST)
X-Google-Smtp-Source: AG47ELu9ghuXKoFLLfW6XpO0kauMNak9XxRy6HZl/yGagqHIiUrvnFMnE575/v6COP86sdQwPO27
X-Received: by 10.80.220.141 with SMTP id r13mr3291341edk.4.1520533413101;
        Thu, 08 Mar 2018 10:23:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520533413; cv=none;
        d=google.com; s=arc-20160816;
        b=YOZdp0Zv8Q2Yt0BU+FFrX/h2d0vEBmzaSETx3hFTqm3QOH4lDmVa8C3hkMwMfD9cRi
         y4ej0knHdEBB4iCkxwG1u/gEX8/Fmdvw6ytdQuq70t4HFLcYkWvU2N33kxoDQ6kMaheU
         bdoQSbVdLU1XMpTf5mnNO7eBMuXtVn4WN4NsYFrjQEZ5phqIE9BBCjWGnWdACNlOrMq9
         4qtg/rYh0qL+dKn7T4F3y+XPEsNfCnUhK0kWBYY385OgdQTGI+vreKzBwWxsXrzHm+jR
         03jgQqMno/gcYiEvUIlyDOpKp39zP+z8C1uJpGE5cO9gl1M2aNwfKwNSOR2g4f1Wxr3Q
         dZoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=4RIVmVDZYNYzqaBTCa7DgFlH730ij3p92geUwAYj1hM=;
        b=IsM2QfoDz8c27SkTLve3zdPB4hkvSDcv2W0bOG3aGsubCQQyTLwLu8oRNB+rWdSb5O
         uKfX1FF3iPN959WTn25gCkEIL4n7wi7FSbmbDca2F9ELfzztAGMO/2XzbLwm14CXOKGF
         7rBkGINj0xG47T+0J695Yo5dcGdU4b0xW5CfnehWGbVrlhDR5xh7PQQTQAa9Xjz48AB+
         MPYB2ijq5SBG83OaI6hrePDjvnVGPoOiTuBQxIRc+tdndxkjUhdm4C/rf0eczyk+FcuL
         fqsGRF/cHEVO8It0Wewo6l3IZMA1nmHhmMMYNeS2xgOzo4hMy4Zmt17slIr9dK9U5/jT
         QB7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=MpA38h47;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id g21si555052edj.5.2018.03.08.10.23.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 10:23:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=MpA38h47;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-wm0-x231.google.com with SMTP id 139so1061667wmn.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 10:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4RIVmVDZYNYzqaBTCa7DgFlH730ij3p92geUwAYj1hM=;
        b=MpA38h47F7UVNtMUmdyDSEIZFuGk1lf4TNZnmLXKrWNmPv7EhsXpfpV09RTbNamucw
         MzgOdDZBWdoYKr7x/lV2aawGkigGFa5+UW+vr2wL4WOBA3zJv8t55OvXnbXNYZVKcD/w
         qzsW6kbzyS4N0+RZpr87UvU7D1ioIxIGkiE5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4RIVmVDZYNYzqaBTCa7DgFlH730ij3p92geUwAYj1hM=;
        b=YpEA5HbZz3w8ApDZHhv8bjHLRhbLIUn5Tm+JnHFQGbbZHYYypa0T7mHf0uWT2vzm20
         bMQdVqupRwSs08qSePHB3GhDfO5S3p0f/VKOO53V3DNwK9uj43EkB7/pFOsAttkSClRS
         BUIX3KXdHVeojXgFlipcLGSzfsEmaMtepon++HFbxlUXjuOOktOANFBMQOkw1V4jSPVW
         KtdTZ8FR8y/pqByDmmvH2j5ab/SjwhQfXzeJr8kdHeu9B37k0f46aCL08SJXVUUm2pNC
         Yw7uLWfgsrmkurzo9vWgkM4VL7/0Dl4TYuVzojnppzKbJ7qWyqSIzkp0IOpnM0C995sC
         u3/Q==
X-Gm-Message-State: APf1xPAxZd2Bcn3KiGsofqAivS7YvW7IUmFAe3x4bnkGDsQurz5U1D+K
	DFHt1uhLnwfIyPIEOc8Gog/2tw==
X-Received: by 10.80.148.153 with SMTP id s25mr34378392eda.144.1520533412234;
        Thu, 08 Mar 2018 10:23:32 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id e12sm14760241edi.29.2018.03.08.10.23.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Mar 2018 10:23:30 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	eric@anholt.net,
	stefan.wahren@i2se.com,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Subject: Re:
Date: Thu,  8 Mar 2018 23:53:22 +0530
Message-Id: <1520533402-23477-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20180301203136.GA23219@kroah.com>
References: <20180301203136.GA23219@kroah.com>

This is with reference to the Patch I submitted for
staging/vc04_services/bcm2835-camera: Add blank line. (Since the last
message on that thread, I have managed to configure mutt, but several of
the more recent emails, however, failed to load in mutt, which is why I
am still not replying inline. I should be able to respond to all future
emails inline, however.)

The last email on the thread ended:
> Look at the code, and see what checkpatch is telling you and see if
> that actually matches with what the code shows. Then make the change
> that you know is correct based on your knowledge of C, and how the
> code should look. Hint, checkpatch is wrong here, but the code is also
> wrong as-is.
>
> thanks, greg k-h

I am afraid I still have not been able to locate the error. Is it a
problem of too many or too few asterisks in the line "static
VCHI_CONNECTION_T *vchi_connection"?

Thank you for your help!

Regards, 
Nishka Dasgupta

