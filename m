X-GM-THRID: 6340351948666961920
X-Received: by 10.36.250.196 with SMTP id v187mr50248ith.4.1476228726795;
        Tue, 11 Oct 2016 16:32:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.98 with SMTP id 89ls2583206ota.5.gmail; Tue, 11 Oct 2016
 16:32:06 -0700 (PDT)
X-Received: by 10.200.35.195 with SMTP id r3mr1646065qtr.79.1476228726340;
        Tue, 11 Oct 2016 16:32:06 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id 203si1001277pfw.0.2016.10.11.16.32.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 16:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id s8so9232144pfj.2
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 16:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Y8FsykgvcW7AP6+O8FXE3jsWw76kR/mRRRRP++JSvV0=;
        b=F8p31NzYXrbRuoGzlxN9vveaO2KO/Jn09E5GKVTIzmnsKsEwwsBf+jsaeDi8D6OG8H
         xTtQHSS+Yf0m9G+/tvhPErH6Gi98fJm5k38Ro1F8H3Ss3O8fLpb1qF6zXUEgqIGJtfLH
         dR6FCHVGMKVf5ovUjIjgyIZ2eky5kVvD7WP9BPNMMG9EScZlqizRW7O+xlfIR25t/9b6
         9Dvla/FJOl7b/WHUhQTvWcHi3/OYdcUgqjfgjZeQdudFyoL30eo/XL1fItWmIA2wHN0T
         37z494URCXlVvz7vo0E/5ZU2ZsND/W6/G77gI+HJzldsLaCxc2NxmiGIjZTMNL8B6YOE
         oQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Y8FsykgvcW7AP6+O8FXE3jsWw76kR/mRRRRP++JSvV0=;
        b=Fkm1Wz1u4qhR8CLv3yabmlHpMFSHkYxEQCdcgUYozB3yeOAgHjLJspWvxDJRoFaFWX
         Mx3RZuTmjuiRf6kJWQQdi5fviUqDOU26EUtbUj5+fCjhlubFum2ZmF5UfZi6uJ5Mh6pd
         3fo+6Owkqcob/R90JI2ELK2ubJpR97X39/uXesxvhX9zmCsoL60rYpAdnxzrKr9+isbh
         dp4MWR+SOH3X6+/oBYvDgmOvwTqo0ziDB5tCUO3InjQebl0nIBJ+CzDqyUZ1I+sC5XVO
         ufN7XxtLu/d9/KQMSlRXADenVIvCZFiWc5Y7y16/J1Il8pDZjW1559sCQgJHTvrJE02y
         5lww==
X-Gm-Message-State: AA6/9RkHMkhUy7TWwJEVaBlulNDy0I8eFu8mYJrN4oGdtvNZvy+6eC9AkuNfWttqzx7Y1w==
X-Received: by 10.98.100.207 with SMTP id y198mr734276pfb.49.1476228726113;
        Tue, 11 Oct 2016 16:32:06 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id i191sm6867102pfe.27.2016.10.11.16.32.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 16:32:05 -0700 (PDT)
Date: Tue, 11 Oct 2016 16:32:03 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: Coccinelle Challenge 1
Message-ID: <20161011233203.GB11666@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Julia,
I worked on the first challenge and I wanted to run my findings and
questions by you. Please confirm whether these observations are correct.

I looked at the difference between local idexpression, expression, and
identifier for ret.cocci.

Local idexpression basically means what local identifier
would mean-- just local vars--  except that's invalid.

Using expression in place of local identifier included results like
this:

- a->b = c;
- return a->b;
+ return c;

I don't know whether or not that's always the right thing to do. I think
that if the changes are only local, it'd be fine to compress the lines.
But if a->b happens to have a global effect than it'd be wrong. I'm not
sure about this, but if the function receives *a as a parameter, then
would a->b = c be a persistent change?

Using identifier included results where 'ret' was not necessarily local,
so compressing the lines would be bad because the global assignment
would be deleted.

I noticed some potentially bad results with ret.cocci:
1. When the type of 'ret' happens to be important, lines shouldn't be
compressed. For example, a function receives a variable of type u64 but
then returns it as u32. Deleting the assignment line means that the
value will be returned as the wrong type.

2. spatch deletes a comment between the assignment and the return
statement. E.g.:

-       start = iwe(info);
-       /* how to translate rssi to ?% */
-       return start;
+       return iwe(info);
 }

3. readability issues-- 
- the return value is very long with many |'s or ||'s 
- the name of the variable might be meaningful to the reader 
- there are if blocks with return statements: 
 same variable name but different values might provide meaning/order to 
  the program. 
  In these cases the variable reassignment or creation isn't actually
  necessary, but does it increase readability?

Questions: 
I'm pretty confused about how these lines work: 

-ret = 
+return 
     e; 
-return ret; 

The first line deletes the name of the variable and the equals sign, 
but what happens to the expression on the right? 
I'm confused as to why it doesn't say -ret = e to signify that the 
expression on the right is what we want 'e' to be. Then return gets 
added, and it's replacing 'ret ='. But why is 'e' even necessary if it 
wasn't deleted? And why is it on a new line with spaces in front? 
The last line '-return ret;' makes sense, we just want to delete the 
word return followed by the variable name. 

I've read some basics of coccinelle, went through the slides, and read 
some articles people wrote about it but I'm still pretty confused. :/ 

Thanks for your time, 
Elizabeth 

