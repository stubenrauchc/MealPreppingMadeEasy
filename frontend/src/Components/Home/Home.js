
import Navigator from '../navigation/Navigator'
import LandingPage from '../LandingPage/LandingPage';

function Home(props) {
    return(
        <div>
            <Navigator/>
            <h3>Home</h3>
            <LandingPage />
        </div>
       
    )
}

export default Home;