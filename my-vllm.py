import dotenv
import fire

from vllm import LLM, SamplingParams
from vllm.config import KVTransferConfig


class MyVLLM:
    def serve(self, model: str = "Qwen/Qwen3-4B", max_model_len: int = 32768):
        ktc = KVTransferConfig(
            kv_connector="LMCacheConnectorV1",
            kv_role="kv_both",
        )
        llm = LLM(model=model, kv_transfer_config=ktc, max_model_len=max_model_len)
        


if __name__ == "__main__":
    dotenv.load_dotenv()
    fire.Fire(MyVLLM)
