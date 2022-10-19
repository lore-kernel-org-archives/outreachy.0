Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F2D53A3
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 19:38:42 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id l6so17188728pgu.7
        for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 12:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1FzElTRMk4RDpdxdd6AQjIGIZZVJ38dCKHorSi5lfeM=;
        b=ka9I27z0Peu1q4VlgMJc60EOonkWkXpF9t+AqxUNlWXaCrGZkaqZe+64k0uCzkiSFw
         wHhxljmrNxUO8x04orFkPdNSFyPLN4Ecn+LYks1Qq9hcHtPZ7bYOu8CyRmEQui6g0wqe
         B1k+LlTfcJypEs0ymyzEK5ts1FwhMNrSmZSz6CyFDuLbZWueW/lcQ0o/nU62ieDAxFOO
         iNZSwLTJU1/1qOJrm30RxMPdmYwpYXu00WOSzA9Dnw1ibcmvLNdI14Eh0SP6oj20aIsd
         R+buiVGMesdbwyLpgp5jpRN27eO8cseDKUmgkmmkVR8UsEHUxYPIhAcYlVs6XWF8S+4h
         zaow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1FzElTRMk4RDpdxdd6AQjIGIZZVJ38dCKHorSi5lfeM=;
        b=J6xd3lharVJb0b9+jzMwUsz5rMzal9NxP3GPcxwQSVXzN3lY68oAkGzv6/K2atQEiF
         MhfVtYYzMQBKV/57eWDIEZ937mk8vMl973pXWCbHinH1zqTUusgk9LffjdSkIVpA7MKf
         UusycNUbvU3FM9DzJ1OwEXws0GfFYancTmJ/uvGy566o7kxhkOXHzpRr7JoEULrBnIMq
         q+H6k9fcE3wSIQcw0FghZ6r3t+bRr0HTw30PauacDxk06OTLSH6LrjOidXHptl4Sdg81
         XNYIWDkX+5Y5wN1AzHCEAIsJ+9SzIY9o0xTpF3qVIOzL6jtZmc3zjY0KjcUYJcJzAKYX
         dwNQ==
X-Gm-Message-State: ACrzQf2lLmFEEXN/bbCuk/ZE2rDJicmRLjeuyffg6X80vSK6A1OF6Vo+
	JA/CYDtota0dlXVejYFJGFckvD0ZHb6g5w==
X-Google-Smtp-Source: AMsMyM5WP2ijnyab8/XWdZOF81R4TZKQHQfvmj1mixWsDCPzIjnx6vsrlG9TkG564EX/lsT8+vJE8g==
X-Received: by 2002:a05:6a00:23d6:b0:565:84d7:64c0 with SMTP id g22-20020a056a0023d600b0056584d764c0mr10131414pfc.43.1666208321350;
        Wed, 19 Oct 2022 12:38:41 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id k6-20020a17090a4c8600b00211923b8edesm23740pjh.40.2022.10.19.12.38.40
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 12:38:41 -0700 (PDT)
Date: Wed, 19 Oct 2022 12:38:39 -0700
From: Emily Peri <eperi1024@gmail.com>
To: outreachy@lists.linux.dev
Subject: Patch email not showing up in inbox
Message-ID: <Y1BSP5ZT+yju8gLf@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,
I sent a patch (staging: rtl8723bs) email to the list serv and ccd the maintainers, but didn't
see the email show up in my inbox. Is there usually a delay with this?
Did anyone else get it? I'm new to mutt so I just want to make sure I
sent it correctly. Thanks!

Emily
