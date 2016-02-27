X-GM-THRID: 6255520875579179008
Date: Sat, 27 Feb 2016 09:58:44 -0800 (PST)
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: bhaktipriya96@gmail.com, tj@kernel.org
Message-Id: <6d7218ea-8b88-45bd-9616-35e72f20075e@googlegroups.com>
In-Reply-To: <20160227115744.GB3965@htj.duckdns.org>
References: <20160226085627.GA8858@Karyakshetra>
 <20160227115744.GB3965@htj.duckdns.org>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: octeon: Convert
 create_singlethread_workqueue()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2175_226894215.1456595924510"
X-Google-Token: ENTHx7YFivpMgWjSZOk0
X-Google-IP: 14.139.82.6

------=_Part_2175_226894215.1456595924510
Content-Type: multipart/alternative; 
	boundary="----=_Part_2176_1676552534.1456595924510"

------=_Part_2176_1676552534.1456595924510
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Tejun,

I have emailed the patch to the developers. I hope to hear from them soon.

Thanks,
Bhaktipriya

On Saturday, February 27, 2016 at 5:27:45 PM UTC+5:30, Tejun Heo wrote:
>
> On Fri, Feb 26, 2016 at 02:26:27PM +0530, Bhaktipriya Shridhar wrote: 
> > With conccurency managed workqueues, use of dedicated workqueues can 
> > be replaced by system_wq. Drop cvm_oct_poll_queue by using system_wq. 
> > 
> > There are multiple work items per cvm_oct_poll_queue (viz. 
> > cvm_oct_rx_refill_work, port_periodic_work) and different 
> > cvm_oct_poll_queues need not be be ordered. Hence, concurrency 
> > can be increased by switching to system_wq. 
> > 
> > All work items are sync canceled in cvm_oct_remove() so it 
> > is guaranteed that no work is in flight by the time exit path runs. 
> > 
> > Signed-off-by: Bhaktipriya Shridhar <bhakti...@gmail.com <javascript:>> 
>
> For the workqueue part, 
>
> Acked-by: Tejun Heo <t...@kernel.org <javascript:>> 
>
> Let's repost with the driver maintainers cc'd so that the patch can be 
> tested and applied. 
>
> Thanks. 
>
> -- 
> tejun 
>

------=_Part_2176_1676552534.1456595924510
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Hello Tejun,<br><br>I have emailed the patch to the developers. I hope to hear from them soon.<br><br>Thanks,<br>Bhaktipriya<br><br>On Saturday, February 27, 2016 at 5:27:45 PM UTC+5:30, Tejun Heo wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Fri, Feb 26, 2016 at 02:26:27PM +0530, Bhaktipriya Shridhar wrote:
<br>&gt; With conccurency managed workqueues, use of dedicated workqueues can
<br>&gt; be replaced by system_wq. Drop cvm_oct_poll_queue by using system_wq.
<br>&gt; 
<br>&gt; There are multiple work items per cvm_oct_poll_queue (viz.
<br>&gt; cvm_oct_rx_refill_work, port_periodic_work) and different
<br>&gt; cvm_oct_poll_queues need not be be ordered. Hence, concurrency
<br>&gt; can be increased by switching to system_wq.
<br>&gt; 
<br>&gt; All work items are sync canceled in cvm_oct_remove() so it
<br>&gt; is guaranteed that no work is in flight by the time exit path runs.
<br>&gt; 
<br>&gt; Signed-off-by: Bhaktipriya Shridhar &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="9oRDGPtaBgAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">bhakti...@gmail.com</a>&gt;
<br>
<br>For the workqueue part,
<br>
<br>Acked-by: Tejun Heo &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="9oRDGPtaBgAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">t...@kernel.org</a>&gt;
<br>
<br>Let&#39;s repost with the driver maintainers cc&#39;d so that the patch can be
<br>tested and applied.
<br>
<br>Thanks.
<br>
<br>-- 
<br>tejun
<br></blockquote></div>
------=_Part_2176_1676552534.1456595924510--

------=_Part_2175_226894215.1456595924510--

